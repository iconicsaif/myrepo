package com.progoti.security

class Country {
    String shortCode;
    String code;
    String name;
    String isdDialingCode;
    Boolean isActive=true;
    static hasMany = [address:Address];
   /* static searchable = {
        root false
    }*/

    static constraints = {
        code(nullable: false,unique: true,size: 3..3);
        shortCode(nullable: false,size: 2..2, unique: true);
        name(nullable: false);
        isdDialingCode(nullable: true);
        isActive(nullable: false);
        address(nullable: true,cascade: "all-delete-orphan");
    }

    public static initialize(){
        def insertSql = [
                ['Bangladesh',"BGD","BD","880"],
                ['India',"IND","IN","91"]
        ]
        if ((Country.count() < 1) && insertSql) {
            insertSql.each {
                new Country(name: it[0],code: it[1],shortCode: it[2],isdDialingCode: it[3],isActive: true).save();
            }
        }
    }

    public String toString(){
        return name;
    }
}
