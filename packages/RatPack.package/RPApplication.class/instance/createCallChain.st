routing
createCallChain
	
	| callChain |
	self setRouteHandlerAndArguments.
	callChain := self middleware instancesForHandler: self routeHandler.
	callChain add: (RPMiddlewareCallChainHandlerAdapter newWithApplication: self).
	^ callChain