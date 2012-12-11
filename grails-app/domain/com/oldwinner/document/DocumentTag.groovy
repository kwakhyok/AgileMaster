package com.oldwinner.document

class DocumentTag {

    String name
    String description

    Date dateCreated

    static belongsTo = Document

    static constraints = {
        name(blank: false)
        description(nullable: true)
    }
}
