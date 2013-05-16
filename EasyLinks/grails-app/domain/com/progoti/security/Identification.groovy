package com.progoti.security

import com.progoti.security.DrivingLicense

class Identification {
    
    String nationalIdentificationNumber;
    static hasMany = [passport:Passport,drivingLicense:DrivingLicense];
    static belongsTo = [userProfile:UserProfile];

   /* static searchable = {
        root false
    }*/

    static constraints = {
        passport(nullable: true)
        drivingLicense(nullable: true)
        userProfile(nullable: true);
        nationalIdentificationNumber(nullable: false);
    }
    static mapping = {
        passport lazy: false
    }
}
