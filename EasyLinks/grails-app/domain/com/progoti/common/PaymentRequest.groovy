package com.progoti.common

class PaymentRequest {

    String schoolName;
    String type;
    String studentId;
    String fromWallet;
    double amount;
    Date reqTime = new Date();
    String status
    String pin
    String byWallet


    static constraints = {
        type(nullable: true );
        reqTime(nullable: true);
        status(nullable: true)
        byWallet(nullable: true)
    }
}
