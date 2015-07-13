model handling
addModelRouteFor: aRPModelClass

	"#(#get: #post: #put: #delete:)"
	| url |
	url := '/api/', (aRPModelClass name).
	
	(self routesFor: #get:) add: ((url, '/([^/]+)') -> #'getFromRequest:with:').
	(self routesFor: #get:) add: (url -> #'getAllFromRequest:').
	(self routesFor: #put:) add: (url -> #'putFromRequest:').
	(self routesFor: #delete:) add: ((url , '/([^/]+)') -> #'deleteFromRequest:with:').
	(self routesFor: #put:) add: ((url, '/([^/]+)') -> #'updateFromRequest:with:').