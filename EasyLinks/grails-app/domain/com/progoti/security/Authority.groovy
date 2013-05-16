package com.progoti.security

class Authority {

    Integer id
    String roleTitle
    String description
    //Authority parentKey

    static hasMany = [features : Feature, users : User, userGroups : UserGroup]

    static belongsTo = [User, UserGroup];


    static constraints = {
        roleTitle(blank:false,size:1..30,unique:true)
        features(nullable: true)

    }

    public static initialize(){
        def insertSql = [
                ["Admin","School Admin"],
                ["Teacher","Class Teacher"],
                ["Clerk","School Clerk"]
        ]
        if (Authority.count < 1 && insertSql) {
            insertSql.each {
                new Authority(roleTitle: it[0],description: it[1]).save();
            }
        }
    }
    String toString(){
        return roleTitle
    }

}
