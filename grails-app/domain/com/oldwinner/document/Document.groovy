package com.oldwinner.document

import com.oldwinner.project.Project
import com.oldwinner.Identity.User

class Document {

    String name

    Date dateCreated

    byte[] attachedFile

    static hasMany = [tags:DocumentTag]

    static belongsTo = [project:Project, author:User]

    static constraints = {
        name(blank: false)
        attachedFile(nullable: true)
    }
    static mapping = {
        sort dateCreated: "desc"
    }
}
