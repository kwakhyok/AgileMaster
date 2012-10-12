package com.oldwinner

import grails.plugins.springsecurity.Secured

class PanelController {

    def springSecurityService


    @Secured("ROLE_MANAGER")
    def index = {

       render view: 'panel'

    }
    @Secured("ROLE_MANAGER")
    def demo = {
        if(springSecurityService.isLoggedIn()){
            def username = getPrincipal().getUsername()
            render view: 'panel', model: [username1:username]
        }else{
            render view: '/login/auth'
        }


    }
}
