package com.progoti.security

class Bank {

    String shortName;
    String fullName;
    Boolean isActive = true;
    static constraints = {
    }

    public static initialize(){
        def insertSql = [
                ['FSIBL',"First Security Islami Bank"]
        ]
        if ((Bank.count() < 1) && insertSql) {
            insertSql.each {
                new Bank(shortName: it[0],fullName: it[1]).save();
            }
        }
    }

}
