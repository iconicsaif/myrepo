package com.progoti.security

import com.progoti.security.Identification

class Passport {
    String passportNumber;
    Date issueDate;
    String issueFrom;
    Date expiredDate;
    Boolean isActive=true;


    static belongsTo = [identification:Identification]



    static constraints = {
        identification(nullable: true)
    }
}
