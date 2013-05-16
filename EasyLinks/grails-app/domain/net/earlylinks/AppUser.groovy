package net.earlylinks

/*USER_ID
• Default USERNAME
• Default Password – prompts to change on first login
• Security question
• Answer to security question*/


class AppUser {


    Integer id;
    String userId;
    String userName;
    String password;
    String securityQuestion;
    String securityAnswer;
    Boolean isActive=false;

    static hasOne = [profile:UserProfile]
    static hasMany = [authorities : Authority, userGroups : UserGroup]

    /* static searchable = {
         profile component: true
     }*/

    static mapping = {
        table("app_user");
        profile(cascade: "all-delete-orphan");
    }

    static constraints = {
        userName(blank:false, size:3..100,unique:true);
        password(blank:false, size:4..100);
        profile(nullable: true);
        authorities(nullable: true);
        userGroups(nullable: true);
    }



}
