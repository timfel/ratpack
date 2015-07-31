routing
route: aHttpRequest 
	| method arguments match methodRoutes |
	method := aHttpRequest method asLowercase asSymbol asMutator.
	methodRoutes := self routesFor: method.
	match := self findHandlerFor: aHttpRequest in: methodRoutes.

	"args needed as array by self perfom: withArguments:"
	arguments := (aHttpRequest url findTokens: '/') allButFirst asArray
			ifEmpty: [^ self perform: match value].
	^ self perform: match value withArguments: arguments