package com.oldwinner.project

import com.oldwinner.Identity.Organization

class BidSection {


    String code
    String name
    long estSum
    BidSection parentSection
    Date bidDate
    Date dateCreated
    String type



    static constraints = {
        code (size: 5..10, blank: false, unique: true)
        name(blank: false)

        parentSection(nullable: true)
        bidDate( nullable:  true)
        type(inList: ['施工类', '设计类', '材料设备类'])

    }

    static hasMany = [subSections: BidSection, biddingOrgs: Organization]

    static mapping = {
        sort dateCreated: 'desc'
    }
}
