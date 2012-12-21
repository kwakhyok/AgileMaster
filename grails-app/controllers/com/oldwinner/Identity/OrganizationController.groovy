package com.oldwinner.Identity

import org.activiti.engine.impl.juel.ExpressionFactoryImpl
import com.oldwinner.BidStatus

class OrganizationController {

    def index = {
    }

    def register = { OrganizationRegistrationCommand urc ->
        if (!params.register) return
        if (!urc.hasErrors()){
            def props = urc.properties
            def org = new Organization(props)
            org.profile = new OrganizationProfile(props)
            if (!org.save(failOnError: true)){
                flash.message = "Error registering organization!"
            }
            flash.message = "SUCCESSFULLY REGISTERED ORGANIZATION"
            redirect (action: "list")
        }else{
            return [userDetails: urc]
        }
        [userDetails:  urc]
    }




    def list = {
        [organizations: Organization.findAll(), organizationTotal:Organization.count()]
    }

    def manage = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [organizations: Organization.list(params), organizationTotal: Organization.count()]
    }



}

class OrganizationRegistrationCommand {

    String code
    String name
    String bidStatus

    String fullName
    Integer registeredCapital
    String address
    String businessScope
    String qualification
    String telephone
    String brand
    String fax
    String orgEmail
    String memo
    Date registerDate

    static constraints = {
        code(blank: false, size: 5..10)
        name(blank: false)
        bidStatus(inList: BidStatus.list(), blank: false)
        fullName(blank: false, size: 5..40)
        registeredCapital(nullable: true)
        businessScope(nullable: true)
        qualification(nullable: true)
        address(blank: false, nullable: true)
        fax(nullable: true)
        orgEmail(email: true, nullable: true)
        telephone(blank: false)
        brand(blank: false)
        memo(size: 1..500, blank: false)
        registerDate(nullable: true)
    }


}
