package com.progoti.security

class User {

    Integer id;
    String userName;
    String password;
    Boolean isActive=false;
    static hasOne = [profile:UserProfile]
    static hasMany = [authorities : Authority, userGroups : UserGroup]

   /* static searchable = {
        profile component: true
    }*/

    static mapping = {
        table("security_user");
        profile(cascade: "all-delete-orphan");
    }

    static constraints = {
        userName(blank:false, size:3..100,unique:true);
        password(blank:false, size:4..100);
        profile(nullable: true);
        authorities(nullable: true);
        userGroups(nullable: true);
    }

    public static initialize(){
        def insertSql = [
                ['manager','1234',"System","Level","Administrator","info@progoti.com","Super Admin",true]
        ]
        if ((User.count() < 1) && insertSql) {
            insertSql.each {
                UserProfile profile=new UserProfile(firstName: it[2],middleName: it[3], lastName: it[4],emailAddress: it[5],title: it[6]);
                User user=new User(userName: it[0],password: it[1],isActive:  it[7]);
                user.profile=profile;
                user.save(flush: true);
                println "DEFAULT USER = $user CREATED";
            }
        }
    }

    public void setProfile(UserProfile profile){
        this.profile=profile;
        if(profile!=null){
            profile?.user=this;
        }
    }

}

