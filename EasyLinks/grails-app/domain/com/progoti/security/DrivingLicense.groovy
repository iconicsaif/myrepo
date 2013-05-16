package com.progoti.security

class DrivingLicense {
    
    String drivingLicenseNumber;
    Date issueDate;
    String issueFrom;
    Date expiredDate;
    Boolean isActive=true;


    static belongsTo = [identification:Identification]

    static constraints = {
        identification(nullable: true)
    }
}
