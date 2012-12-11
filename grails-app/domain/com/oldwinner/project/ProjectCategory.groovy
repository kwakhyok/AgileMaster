package com.oldwinner.project

class ProjectCategory {

    String name

    static constraints = {
        name (blank: false)
        projects (nullable: true)

    }
    static hasMany = [projects:Project]

    public String toString(){
        name
    }
}
