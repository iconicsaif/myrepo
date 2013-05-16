package com.progoti.security

class UserProfile {

    String firstName;
    String middleName;
    String lastName;
    String nickName;
    String emailAddress;
    String gender;
    Date dateOfBirth;
    Date updated;
    Date created=new Date();
    String title;
    String imageUrl;
    String designation;
    String mobileNumber;
    static hasOne = [identification:Identification];
    static belongsTo = [user:User,address:Address];

   /* static searchable = {
        address component: true
    }*/
    static constraints = {
        firstName(nullable:true);
        middleName(nullable:true);
        lastName(nullable:true);
        nickName(nullable:true);
        imageUrl(nullable: true);
        gender(nullable: true);
        dateOfBirth(nullable: true);
        designation(nullable: true);
        mobileNumber(nullable: true);
        updated(nullable: true);
        address(nullable: true);
        user(nullable: true);
        identification(nullable: true);
        emailAddress(nullable: true, email: true);
        title(blank: false);
    }

    public void setIdentification(Identification identification){
        this.identification=identification;
        if(identification!=null){
            identification.userProfile=this;
        }
    }

    public String toString(){
        return firstName + " " + middleName +" "+lastName+ ("-"+address?.region?:"")+("-"+address?.country?.name?:"")
    }
}
