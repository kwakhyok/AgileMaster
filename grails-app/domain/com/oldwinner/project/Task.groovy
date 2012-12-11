package com.oldwinner.project

import com.oldwinner.Identity.User
import com.oldwinner.document.Document

class Task {

    String name
    Date dateCreated
    Date startDate
    Date endDate


    static hasMany=[documents:Document]

    static belongsTo = [project:Project]

    static constraints = {
        name(blank: false)

    }
}
