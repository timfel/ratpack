routing
findHandlerInRoutes: routes 
	
	| urlHandlerAssosiation |
	urlHandlerAssosiation := routes
				detect: [:route | (RxMatcher forString: route key) matches: self request url]
				ifNone: [self request url -> #notFound].
	^ urlHandlerAssosiation value