package com.progoti.common

import java.text.SimpleDateFormat
import java.text.DateFormat
import com.progoti.security.User

class ReportController {
    def jasperService
    def grailsApplication  //inject GrailsApplication

    def index() { }
    def receipt(){
        params.max = params.max ? params.int('max') : 100;
        params.min = params.min ? params.int('min') : 0;
        DateFormat dateFormatter = new SimpleDateFormat("yyyyMMddHHmmss", Locale.US);
        String fileName = dateFormatter.format(new Date());

        String filename = "report_" + fileName + "_userList" + ".xls";
        dateFormatter = new SimpleDateFormat("dd/MM/yyyy");

        List<User> details=User.findAll();
        Map<String, Object> userSheetMap;
        List userSheet = new ArrayList();
        params.receivedDate=dateFormatter.format(new Date());
        params.size=details.size();

        String format = params["_format"];


        for (User user : details) {
            userSheetMap = new HashMap<String, Object>();

            String firstName = user?.profile?.firstName ?: "";
            String middleName = user?.profile?.middleName ?: "";
            String lastName = user?.profile?.lastName ?: "";
            String nickName = user?.profile?.nickName ?: "";
            String fullName= firstName+" "+middleName+" "+lastName +" "+nickName;


            userSheetMap.put("fullName", fullName);
            userSheetMap.put("loginID", user?.userName);
            userSheetMap.put("title", user?.profile?.title);
            userSheetMap.put("email", user?.profile?.emailAddress);
            userSheetMap.put("status", user?.isActive?"Active":"In active");
            userSheetMap.put("designation", user?.profile?.designation);
            userSheetMap.put("creationDate", dateFormatter.format(user?.profile?.created));

            userSheet.add(userSheetMap);

        }

        params.SUBREPORT_DIR = "${servletContext.getRealPath('/reports')}/"
        params.IMAGE_DIR = "${servletContext.getRealPath('/images')}/"

        def reportDef = jasperService.buildReportDefinition(params, request.getLocale(), [data: userSheet])

        String filenameXls = "report_pdf_" + fileName + "_userList";

        if (!reportDef.fileFormat.inline && !reportDef.parameters._inline) {
            response.setHeader("Content-disposition", "attachment; filename=" + filenameXls + "." + reportDef.fileFormat.extension);
            response.contentType = reportDef.fileFormat.mimeTyp
            response.characterEncoding = "UTF-8"
            response.outputStream << reportDef.contentStream.toByteArray()
        }
        else {

            render(text: reportDef.contentStream, contentType: reportDef.fileFormat.mimeTyp, encoding: reportDef.parameters.encoding ? reportDef.parameters.encoding : 'UTF-8');
        }


    }



}
