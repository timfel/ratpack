routing
setRouteHandler
	
	| method methodRoutes |
	method := self request method asLowercase asSymbol asMutator.
	methodRoutes := self routesFor: method.
  	self routeHandler: (self findHandlerInRoutes: methodRoutes) value. 