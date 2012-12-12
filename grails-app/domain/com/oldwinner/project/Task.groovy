package com.oldwinner.project

import com.oldwinner.Identity.User
import com.oldwinner.document.Document

class Task {

    String name
    String description

    Date dateCreated
    Date startDate
    Date endDate


    static hasMany=[documents:Document]

    static belongsTo = [project:Project]

    static constraints = {
        name(blank: false,size: 1..20)
        description(nullable: true)
        startDate( validator: {startDate, task ->
            return (startDate < task.endDate) | (startDate == task.endDate)
        })
        documents(nullable: true)

    }

    static mapping = {
        sort dateCreated: 'desc'
    }
}
