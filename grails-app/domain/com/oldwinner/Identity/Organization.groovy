package com.oldwinner.Identity

import com.oldwinner.BidStatus
import com.oldwinner.project.BidActivity

class Organization {

    static searchable = true

    String code
    String name

    OrganizationProfile profile

    static constraints = {
        code(blank: false, size: 5..10)
        profile(nullable: true)
        name(blank: false)
    }

    static hasMany = [employees: User, bidActivities: BidActivity]

    static mapping = {
        profile lazy: false
    }

    public String toString(){
        code + ": " + name
    }
}
