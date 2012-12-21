package com.oldwinner

class DashboardController {


    static navigation = [
            [group: 'dashboard', order: 10, title: 'settings', action: 'goToSetting'],
            [group: 'dashboard', order: 11, title: 'information', action: 'goToInformation'],
            [group: 'dashboard', order: 12, title: 'investment', action: 'goToInvestment'],
            [group: 'dashboard', order: 13, title: 'purchase', action: 'goToPurchase'],
            [group: 'dashboard', order: 14, title: 'design', action: 'goToDesign'],
            [group: 'dashboard', order: 15, title: 'project', action: 'goToProject'],
            [group: 'dashboard', order: 16, title: 'authentication', action: 'goToAuthentication'],
            [group: 'dashboard', order: 17, title: 'user', action: 'goToUser'],
            [group: 'dashboard', order: 18, title: 'tender', action: 'goToTender'],
    ]

    def index = {

    }

    def goToTender = {

    }

    def goToInvestment = {

    }

    def goToPurchase = {

    }

    def goToInformation ={
        redirect(controller: 'organization', action: 'register')
    }

    def goToAuthentication={

    }

    def goToSettings={

        render 'Settings!'

    }

    def goToProject={

    }

}
