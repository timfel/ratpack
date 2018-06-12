routing
setRouteHandlerAndArguments
	
	| regexHandlerAssociation |
	regexHandlerAssociation := self getRegexHandlerFromUrl.
	self routeHandler: regexHandlerAssociation value.
	self setArgumentsToEnv: regexHandlerAssociation key.