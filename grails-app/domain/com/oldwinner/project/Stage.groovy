package com.oldwinner.project

class Stage {

    String name

    static constraints = {
        name(blank: false)
    }

    static belongsTo = [project:Project]
}
