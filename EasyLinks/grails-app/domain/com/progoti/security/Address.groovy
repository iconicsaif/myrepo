package com.progoti.security

class Address {

    String extendedAddress;
    String poBox;
    String postalCode;
    String region;
    String streetAddress;
    static belongsTo = [country:Country];

    static searchable = {
        root false
        country component:true
    }
    static constraints = {
        country(nullable:false)
        extendedAddress(nullable:true)
        poBox(nullable: true)
        postalCode(nullable: true)
        region(nullable: true)
        streetAddress(nullable: true);
    }

    public String toString(){
        return streetAddress + ", "+region+ ", "+country;
    }
}
