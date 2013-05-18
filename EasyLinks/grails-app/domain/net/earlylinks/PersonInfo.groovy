package net.earlylinks

class PersonInfo {

    Integer id;
    String title;
    String firstName;
    String surName;
    String fullName;
    Date dateOfBirth;
    String age;
    String phone;
    String mobile;
    String address;
    String suburb;
    String postCode;
    String state;
    String country;
    String imageUrl;

    def mapOfAddress;
    String email;
    Date updated;
    Date created=new Date();

//    static hasOne = [identification:Identification];
//    static belongsTo = [user:User,address:Address];

    /* static searchable = {
         address component: true
     }*/
    static constraints = {

        firstName(nullable:true);
        surName(nullable:true);
        fullName(nullable:true);
        imageUrl(nullable: true);
        age(nullable: true);
        dateOfBirth(nullable: true);
        phone(nullable: true);
        mobile(nullable: true);
        updated(nullable: true);
        created(nullable: true);
        address(nullable: true);
        title(nullable: true);
        email(nullable: true);
        mapOfAddress(nullable: true);
    }

    @Override
    public String toString() {
        return "PersonInfo{" +
                "address='" + address + '\'' +
                ", id=" + id +
                ", title='" + title + '\'' +
                ", firstName='" + firstName + '\'' +
                ", surName='" + surName + '\'' +
                ", fullName='" + fullName + '\'' +
                ", dateOfBirth=" + dateOfBirth +
                ", age='" + age + '\'' +
                ", phone='" + phone + '\'' +
                ", mobile='" + mobile + '\'' +
                ", suburb='" + suburb + '\'' +
                ", postCode='" + postCode + '\'' +
                ", state='" + state + '\'' +
                ", country='" + country + '\'' +
                ", imageUrl='" + imageUrl + '\'' +
                ", mapOfAddress=" + mapOfAddress +
                ", email='" + email + '\'' +
                ", updated=" + updated +
                ", created=" + created +
                ", version=" + version +
                ", identification=" + identification +
                ", user=" + user +
                '}';
    }
}
