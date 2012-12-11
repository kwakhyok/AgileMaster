package com.oldwinner

class ProcessDemoController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
    static activiti = true

    def index = {
       processDemo = new ProcessDemo()
       processDemo.properties = params
       return [processDemo: processDemo]
    }


    def save={
        render params
    }
}
