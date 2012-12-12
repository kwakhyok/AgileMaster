package com.oldwinner.Identity

import com.oldwinner.BidStatus

class Organization {

    static searchable = true

    String code
    String name
    BidStatus bidStatus = BidStatus.INTENTION

    OrganizationProfile profile

    static constraints = {
        code(blank: false, size: 5..10)
        profile(nullable: true)
        name(blank: false)
        bidStatus (inList: BidStatus.list(), blank: false)
    }

    static hasMany = [employees: User]

    static mapping = {
        profile lazy: false
    }
}
