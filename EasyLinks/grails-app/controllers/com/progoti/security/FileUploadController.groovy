package com.progoti.security

import java.text.SimpleDateFormat;
import javax.servlet.ServletException;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload
import javax.servlet.http.HttpSession;


class FileUploadController {
    private static final long serialVersionUID = 6748857432950840322L;
    private static final String DESTINATION_DIR_PATH = "photograph";
    private static String TMP_DIR_PATH = "temp";
    private File tmpDir;
    private File destinationDir;
    String realPath;
    static allowedMethods = [uploadFile: "POST"];

    def beforeInterceptor = [action:this.&uploadFile]

    def index() {
    }

    private void uploadFileToFolder(String fileName, FileItem item){
        session.getAttribute("imageUrl") != null ? session.removeAttribute("imageUrl") : ""
        HttpSession session = session;
        File file = null;
        String attachmentPath = "";
        if(session.getAttribute("imageName") != null && !session.getAttribute("imageName").equals("")){
            fileName = (String) session.getAttribute("imageName");
        }else{
            session.setAttribute("imageName", fileName);
        }
        file = new File(realPath +"/photograph/", fileName);
        attachmentPath = "/photograph/" + fileName;
        session.setAttribute("imageUrl", attachmentPath);
        try {
            item.write(file);
            println("Item File Type:" + item.getFieldName() + "=" + attachmentPath);
        } catch (Exception ex) {
            log.error("Upload failed",ex);
        }
        render(template: "/user/preview_photo",model: [imageUrl:attachmentPath]);
    }
    def uploadFile(){
        TMP_DIR_PATH = getServletContext().getRealPath("temp");
        tmpDir = new File(TMP_DIR_PATH);
        if (!tmpDir.isDirectory()) {
            throw new ServletException(TMP_DIR_PATH + " is not a directory");
        }
        realPath = getServletContext().getRealPath("");
        println("The destination path is : "+realPath);
        try {
            DiskFileItemFactory fileItemFactory = new DiskFileItemFactory();
            fileItemFactory.setSizeThreshold(10 * 1024 * 1024); //10 MB
            fileItemFactory.setRepository(tmpDir);

            ServletFileUpload uploadHandler = new ServletFileUpload(fileItemFactory);
//            uploadHandler.setSizeMax(100 * 1024);

            List<FileItem> items = uploadHandler.parseRequest(request);
            Iterator itr = items.iterator();
            while (itr.hasNext()) {
                FileItem item = (FileItem) itr.next();
                if (!item.isFormField() && !item.getString().equalsIgnoreCase("")) {
                    String fileName = getRandomFileName(item.getName());

                    uploadFileToFolder(fileName, item);
                }
            }
        } catch (FileUploadException ex) {
            log.error("Upload failed",ex);
        }
    }

    def getRandomFileName(String fileName) {
        Calendar currentDate = Calendar.getInstance();
        SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddHHmmss");
        String dateNow = formatter.format(currentDate.getTime());
        Random randomGenerator = new Random();
        long randomInt = randomGenerator.nextInt();
        String ext = getFileExt(fileName);
        return dateNow+""+randomInt+"."+ext;
    }

    def getFileExt(String filePath) {
        int iPos = filePath.lastIndexOf(".");
        if (iPos > 0) {
            return filePath.substring(iPos + 1);
        } else {
            return "";
        }
    }

}
