class UrlMappings {

	static mappings = {
        "/logout/index" (redirect: "/post/index")
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }

        }


        "/"(view:"/index")
        "500"(view:'/error')
	}
}
