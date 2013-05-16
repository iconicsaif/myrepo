package com.progoti.security

class UserGroup {

    Integer id
    String groupName
    String description
    Boolean isActive = true;

    static mapping = {
        table("user_group")
    }

    static hasMany = [users : User, authorities: Authority]

    static belongsTo = [User];

    static constraints = {
        groupName(blank: false,unique: true,size: 2..50)
        description(nullable: true)
    }

    public static initialize(){
        def insertSql = [
                ["Admin Group","School Admin Group"],
                ["Teacher Group","Class Teacher Group"],
                ["Clerk Group","School Clerk Group"]
        ]
        if (UserGroup.count < 1 && insertSql) {
            insertSql.each {
                new UserGroup(groupName: it[0],description: it[1]).save();
            }
        }
    }

    String toString(){
        return groupName
    }
}
