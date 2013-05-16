package com.progoti.security

class AcademicYear {
    String sessionName;
    String shortName;
    String description;

    static constraints = {
        sessionName(nullable: true)
        description(nullable: true)
        shortName(nullable: true)
    }
    public static initialize(){
        def insertAcademicYear = [
                ["2013", "13", "2013"]
        ]
        if ((AcademicYear.count() < 1) && insertAcademicYear) {
            insertAcademicYear.each {
                AcademicYear academicYear = new AcademicYear(sessionName: it[0], shortName: it[1], description: it[2]);
                academicYear.save();
            }
        }
    }
}
