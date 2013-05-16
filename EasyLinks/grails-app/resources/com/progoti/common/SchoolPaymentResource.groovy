package com.progoti.common

import javax.ws.rs.POST
import javax.ws.rs.Path
import javax.ws.rs.Produces
import javax.ws.rs.Consumes

import grails.converters.JSON
import com.progoti.dto.PaymentResult
import com.progoti.school.util.EncryptionUtils


@Path('/api/schoolPayment')

class SchoolPaymentResource {

    def securityService

    @POST
    @Consumes(['application/xml', 'application/json'])
    @Produces(['application/xml', 'application/json'])
    String getSchoolPaymentRepresentation(PaymentRequest paymentReq) {


        PaymentResult paymentResult = new PaymentResult();
        /*
        paymentReq.status = "Payment transaction initiated but not yet completed.";
        paymentReq.save(flush: true);
        //check all in payment request
        if (paymentReq.fromWallet == null || paymentReq.fromWallet == "") {
            paymentResult.status = "ERROR"
            paymentResult.description = "Wallet Cant Be Null"
        }
        else if (paymentReq.amount == null || paymentReq.amount == "") {
            paymentResult.status = "ERROR"
            paymentResult.description = "Amount Can not be  Blank"

        }

        else if (paymentReq.studentId == null || paymentReq.studentId == "") {
            paymentResult.status = "ERROR"
            paymentResult.description = "Student Id cant be Blank"
        }
        else if (paymentReq.studentId.length() > 12 || paymentReq.studentId.length() < 8)//for only agrani school
        {
            paymentResult.status = "ERROR"
            paymentResult.description = "Student ID format is not correct"
        }
        else {      //if inpur like 12101045
            if (paymentReq.studentId.length() == 8) {
                paymentReq.studentId = "20" + paymentReq.studentId
                paymentReq.studentId = paymentReq.studentId.substring(0, 4) + "-" + paymentReq.studentId.substring(4, 6) + "-" + paymentReq.studentId.substring(6)

            }
            //if input like 2012101045
            else if (paymentReq.studentId.length() == 10) {
                paymentReq.studentId = paymentReq.studentId.substring(0, 4) + "-" + paymentReq.studentId.substring(4, 6) + "-" + paymentReq.studentId.substring(6)
            }
            try{
                paymentResult = schoolPaymentService.doSchoolPayment(paymentReq)
            }catch(Exception e){
                if("PROCESSED".equalsIgnoreCase(paymentResult.status)){
                    paymentReq.status = "Payment Transaction Processed but could not updated school payment database"
                    paymentReq.merge(flush: true);
                    return (paymentResult as JSON);
                }

            }
        }
        if("ERROR".equalsIgnoreCase(paymentResult.status)){
            paymentReq.status = paymentResult.status +":"+paymentResult.description;
        }
        paymentReq.status = paymentResult.status +":"+paymentResult.description;
        paymentReq.merge(flush: true);
        */
        paymentResult as JSON;

    }


}
