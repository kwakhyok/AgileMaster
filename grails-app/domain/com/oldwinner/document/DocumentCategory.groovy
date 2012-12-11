package com.oldwinner.document

class DocumentCategory {

    String name

    static constraints = {
        name(blank: false)
    }

    static hasMany = [documents:Document]

    public String toString(){
        name
    }
}
