routing
createCallChain
	
	| callChain |
	callChain := self middleware instancesForHandler: self routeHandler.
	callChain add: (RPMiddlewareCallChainHandlerAdapter newWithApplication: self).
	^ callChain