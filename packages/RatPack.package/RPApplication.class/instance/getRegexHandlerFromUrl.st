routing
getRegexHandlerFromUrl

	| method methodRoutes regexHandlerAssosiation |
	method := self request method asLowercase asSymbol asMutator.
	methodRoutes := self routesFor: method.

	^ regexHandlerAssosiation := methodRoutes
				detect: [:route | (RxMatcher forString: route key) matches: self request url]
				ifNone: [self request url -> #notFound]