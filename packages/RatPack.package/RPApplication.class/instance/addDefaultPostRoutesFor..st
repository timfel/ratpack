model handling
addDefaultPostRoutesFor: anRPModelClass
	
	| apiUrl |
	apiUrl := self class apiRoutePrefix, '(', anRPModelClass name, ')'.
	(self routesFor: #post:) add: (apiUrl -> #'postFromRequest:').
	