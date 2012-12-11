package com.oldwinner.Identity

import com.oldwinner.project.Project
import com.oldwinner.project.Task
import com.oldwinner.document.Document

class User implements org.activiti.engine.identity.User {
	
	String id
	String username
	String email
	String firstName
	String lastName
	String password
	boolean enabled
	boolean accountExpired
	boolean accountLocked
	boolean passwordExpired

    UserProfile profile

	static constraints = {
		username blank: false, unique: true
		password blank: false
		email email: true, blank: false, unique: true
		firstName blank: false
		lastName blank: false
        profile nullable: true
	}

	static mapping = {
		password column: '`password`'
		id generator: 'uuid'
        profile lazy: false

    }

    static hasMany = [ownedProjects:Project, joinedProjects:Project, assignedTasks:Task, documents:Document]

	Set<Role> getAuthorities() {
		UserRole.findAllByUser(this).collect { it.role } as Set
	}

    public String toString(){
        username
    }
}
