package com.oldwinner.Identity

class Role implements org.activiti.engine.identity.Group {
	String id
	String name
	String authority
	String type
	
	static mapping = {
		cache true
		id generator: 'assigned'
	}

	static constraints = {
		authority blank: false, unique: true
		name blank: false
		type (nullable: true, inList: ['管理员', '业主工地代表', '业主合同管理', '设计方', '监理方'])
	}
}
