package com.oldwinner.Identity

class OrganizationProfile {



    String fullName
    Integer registeredCapital      //TODO: add money unit (By default 10k RMB) to all domain class
    String address
    String businessScope
    String qualification
    String telephone
    String brand
    String fax
    String orgEmail
    String memo
    Date dateCreated
    Date registerDate

    static belongsTo = Organization

    static constraints = {
        fullName(blank: false, size: 5..40)
        registeredCapital(nullable: true)
        businessScope(nullable: true)
        qualification(nullable: true)
        address(blank: false, nullable: true)
        fax(nullable: true)
        orgEmail(email: true, nullable: true)
        telephone(blank:false, nullable: true)
        brand(blank: false, nullable: true)
        memo(nullable: true)
        registerDate(nullable: true)
    }

    String toString = {
          fullName
    }

}
