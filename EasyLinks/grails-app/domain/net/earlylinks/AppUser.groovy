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

//    static hasOne = [profile:UserProfile]
//    static hasMany = [authorities : Authority, userGroups : UserGroup]

    /* static searchable = {
         profile component: true
     }*/

    static mapping = {
        table("app_user");
        profile(cascade: "all-delete-orphan");
    }

    static constraints = {
        userName(nullable: true);
        password(nullable: true);
        securityQuestion(nullable: true);
        securityAnswer(nullable: true);
    }



}
