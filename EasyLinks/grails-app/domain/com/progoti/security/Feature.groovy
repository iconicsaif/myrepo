package com.progoti.security


class Feature {

    Integer id
    String description
    String documents
    String fields
    String module
    String operation

    static hasMany = [authorities : Authority]

    static belongsTo = [Authority]


    static constraints = {
        description(nullable: true)
        documents(nullable: true)
    }

   public static void initialize(){

   }
}
