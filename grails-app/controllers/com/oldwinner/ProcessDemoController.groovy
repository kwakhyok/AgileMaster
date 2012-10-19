package com.oldwinner

class ProcessDemoController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
    static activiti = true

    def index = {

    }


    def save={
        println "save"
    }
}
