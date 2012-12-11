package com.oldwinner.project

import com.oldwinner.Identity.User
import com.oldwinner.document.Document

class Project {

    String name
    String description

    ProjectCategory category

    Date dateCreated

    Date startDate

    Date endDate

    static constraints = {
        name (blank: false)
        description(nullable: true)
        category(nullable: true)
        tags(nullable: true)
        subProjects(nullable: true)
        stages(nullable: true)
        associatedDocuments(nullable: true)
        tasks(nullable: true)
    }

    static hasMany = [tags: Tag, subProjects:Project, stages:Stage, associatedDocuments:Document, tasks: Task]

    static belongsTo = [owner:User]

    static mapping = {
        sort dateCreated: "desc"
    }
}
