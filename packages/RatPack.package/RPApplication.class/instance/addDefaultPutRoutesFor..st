model handling
addDefaultPutRoutesFor: anRPModelClass	

	| apiUrl |
	apiUrl := self class apiRoutePrefix, (anRPModelClass name).
	(self routesFor: #put:) add: ((apiUrl, self class wildcard) -> #'updateFromRequest:with:').
	