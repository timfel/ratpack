model handling
addDefaultDeleteRoutesFor: anRPModelClass

	| apiUrl |
	apiUrl := self class apiRoutePrefix, (anRPModelClass name).
	(self routesFor: #delete:) add: ((apiUrl , self class wildcard) -> #'deleteFromRequest:with:').