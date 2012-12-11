package com.oldwinner.Identity

class OrganizationTag {

    String name
    String description


    static constraints = {
        name(blank: false)
    }

    static hasMany = [organizations:Organization]
    static belongsTo = [Organization]
}
