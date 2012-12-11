package com.oldwinner.project

import com.oldwinner.Identity.User

class Tag {

    String name
    User user


    static constraints = {
        name(blank:false)
    }

    static hasMany = [projects:Project]

    static belongsTo=[User, Project]
}
