class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}
        "/d"(view: '/d')
        "/e"(view: '/e')
		"500"(view:'/error')
        "/panel"(view: '/panel/panel')
        "/"(controller: 'panel')
	}
}
