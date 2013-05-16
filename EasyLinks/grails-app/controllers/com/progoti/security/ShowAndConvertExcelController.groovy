
package com.progoti.security

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook

import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import org.apache.poi.poifs.filesystem.POIFSFileSystem

import javax.activation.MimetypesFileTypeMap;
import com.progoti.school.util.Utils

class ShowAndConvertExcelController extends SearchableWorkaroundController{
  /*
    private static List<Student> studentList;
    def securityService;
    def studentService
//    def searchableService


    def index() {
        response.setHeader("Content-Type", "text/html");
        String path = getServletContext().getRealPath("") + (String)session.getAttribute("imageUrl");
        System.out.println("The file path is :: "+path);

        File file = new File(path);
        def mimeType = new MimetypesFileTypeMap().getContentType(file);
        def fileName = file.getName();
        def extension = new Utils().getFileExt(fileName);
        if (mimeType.equalsIgnoreCase("application/octet-stream") && extension.equals("xls")){
            studentList = this.importExcelIntoDB(file);
        }else if (mimeType.equalsIgnoreCase("application/octet-stream") && extension.equals("xlsx")){
            studentList = this.importExcelXIntoDB(file);
        }
//        redirect(action: "save", studentList: studentList)
        searchableService?.stopMirroring()
        studentService.saveImportedListOfStudent(studentList);
        searchableService?.startMirroring()
        searchableService?.reindex()
        if (studentList != null){
            render(template: "/student/bulk_import_inner_list", model:[studentInstanceList : studentList,
                    studentInstanceTotal: studentList.size()])
        }
    }

//    def save(List<Student> studentList){
//        studentService.saveImportedListOfStudent(studentList);
//        if (studentList != null){
//            render(template: "/student/bulk_import_inner_list", model:[studentInstanceList : studentList,
//                    studentInstanceTotal: studentList.size()])
//        }
//    }

    private void assignFieldValue(Student student,User userInstance, UserProfile profile, String key, String value){

        profile.setTitle("Student");
        switch(key){
            case "currentId":
                long longRoll = 0;
                try{
                    longRoll = Double.parseDouble(value).longValue();
                } catch(Exception e){
                    longRoll=value;
                }
                student.setCurrentId(longRoll+"");
                break;
            case "registrationId":
                student.setRegistrationId(value);
                break;
            case "classes":
                int classes = 0;
                try{
                    classes = Double.parseDouble(value).intValue();
                } catch(Exception e){
                    classes=value;
                }
                student.setClasses(Classes.findByClassCode(classes));
                break;
            case "section":
                student.setSection(Section.findBySectionCode(value));
                break;
            case "schoolName":
                School school=School.findBySchoolName(value);
                if(school==null){
                    school=School.findBySchoolCode(value);
                }
                userInstance.setSchool(School.findBySchoolName(value));


                break;
            case "feesProfile":
                long feesProfileId = 0;
                try{
                    feesProfileId = Double.parseDouble(value).longValue();
                    student.setFeesProfile(FeesProfile.findById(feesProfileId));
                } catch(Exception e){
                    student.setFeesProfile(FeesProfile.findByProfileName(value));
                }

                break;
            case "mobileNumber":
                if(value!=null){
                    profile.mobileNumber=value;
                    student.mobileNumber=value;
                    int lengthOfMobileNumber=profile.mobileNumber?.length()?:0;
                    if(lengthOfMobileNumber>=4){
                        int startIndex=lengthOfMobileNumber-4;
                        userInstance.setPassword(securityService.encryptPassword(profile.mobileNumber?.substring(startIndex)));
                    }
                }

                break;
            case "fullName":

                String []names=value?.split();
                profile.setFirstName(names[0]?:"");
                userInstance.setUserName(profile.getFirstName());

                if(names?.length>2){
                    profile.setMiddleName(names[1]?:"");
                    profile.setLastName(names[2]?:"");
                    if (names?.length>=4){
                        int i=3;
                        profile.nickName="";
                        while(i<names.length){
                            profile.nickName+=names[i]?:"";
                            i++;
                        }

                    }
                } else{
                    if(names?.length>=2){
                        profile.setLastName(names[1]?:"");
                    }
                }
                break;
        }

    }
    private List<Student> importExcelIntoDB(File file) throws IOException {
        studentList = new ArrayList<Student>();
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            POIFSFileSystem poiFileSystem = new POIFSFileSystem(fileInputStream);
            HSSFWorkbook workBook = new HSSFWorkbook(poiFileSystem);
            HSSFSheet sheet = (HSSFSheet) workBook.getSheetAt(0);
            Iterator<?> rowIter = sheet.rowIterator();

            HSSFRow headingRow = (HSSFRow) rowIter.next();
            Iterator<?> headingCellIter = headingRow.cellIterator();
            List<String> headerRowOfStudent = new ArrayList<String>();
            while (headingCellIter.hasNext()) {
                HSSFCell eachCell = (HSSFCell) headingCellIter.next();
                headerRowOfStudent.add(eachCell.toString())
                println(eachCell.toString())
            }

            while (rowIter.hasNext()) {
                HSSFRow eachRow = (HSSFRow) rowIter.next();
                Iterator<?> cellIter = eachRow.cellIterator();
                List<HSSFCell> cellRowList = new ArrayList<HSSFCell>();
                Student eachStudent = new Student();
                int i = 0;
                User userInstance=new User();
                UserProfile profile=new UserProfile();
                while (cellIter.hasNext()) {
                    HSSFCell eachCell = (HSSFCell) cellIter.next();
                    assignFieldValue(eachStudent,userInstance,profile, headerRowOfStudent.get(i), eachCell.toString())
                    i++;
                    cellRowList.add(eachCell);
                }
                userInstance.setProfile(profile);
                //profile.setUser(userInstance);
                eachStudent.setUser(userInstance);
                studentList.add(eachStudent)
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }finally{
            session.removeAttribute("imageUrl");
            session.removeAttribute("imageName");
        }
        return studentList;
    }

    private List<Student> importExcelXIntoDB(File file) throws IOException {
        studentList = new ArrayList<Student>();
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
//            POIFSFileSystem poiFileSystem = new POIFSFileSystem(fileInputStream);
            XSSFWorkbook workBook = new XSSFWorkbook(fileInputStream);
            XSSFSheet sheet = (XSSFSheet) workBook.getSheetAt(0);
            Iterator<?> rowIter = sheet.rowIterator();

            XSSFRow headingRow = (XSSFRow) rowIter.next();
            Iterator<?> headingCellIter = headingRow.cellIterator();
            List<String> headerRowOfStudent = new ArrayList<String>();
            while (headingCellIter.hasNext()) {
                XSSFCell eachCell = (XSSFCell) headingCellIter.next();
                headerRowOfStudent.add(eachCell.toString())
                println(eachCell.toString())
            }
            while (rowIter.hasNext()) {
                XSSFRow eachRow = (XSSFRow) rowIter.next();
                Iterator<?> cellIter = eachRow.cellIterator();
                List<XSSFCell> cellRowList = new ArrayList<XSSFCell>();
                Student eachStudent = new Student();
                int i = 0;

                while (cellIter.hasNext()) {
                    XSSFCell eachCell = (XSSFCell) cellIter.next();
                    User userInstance=new User();;
                    UserProfile profile=new UserProfile();
                    assignFieldValue(eachStudent,userInstance,profile, headerRowOfStudent.get(i), eachCell.toString())
                    i++;
                    cellRowList.add(eachCell);
                }
                studentList.add(eachStudent)
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }finally{
            session.removeAttribute("imageUrl");
            session.removeAttribute("imageName");
        }
        return studentList;
    }
    */
}

