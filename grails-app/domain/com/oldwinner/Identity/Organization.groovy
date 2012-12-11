package com.oldwinner.Identity

class Organization {

    static searchable = true

    String code
    String name
    String bidStatus
    OrganizationProfile profile

    static constraints = {
        code(blank: false, size: 5..10)
        profile(nullable: true)
        name(blank: false)
        bidStatus (inList: ['意向','已登记', '投标', '中标', '过期'], blank: false)
    }

    static hasMany = [employees: User]

    static mapping = {
        profile lazy: false
    }
}
