routing
route: aHttpRequest 
	| method arguments match methodRoutes |
	method := aHttpRequest method asLowercase asSymbol asMutator.
	methodRoutes := self routesFor: method.

	match := self findHandlerFor: aHttpRequest in: methodRoutes.
	match ifNil: [^ self notFound].

	arguments := (match key findTokens: '/') allButFirst 
			ifEmpty: [^ self perform: match value].

	^ self perform: match value withArguments: arguments