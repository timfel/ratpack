model handling
addModelRouteFor: aRPModelClass

	"#(#get: #post: #put: #delete:)"
	| url |
	url := '/api/', (aRPModelClass name).
	
	(self routesFor: #get:) add: ((url, '/([^/]+)') -> #'getFromRequest:at:').
	(self routesFor: #get:) add: (url -> #'getAllFromRequest:').
	(self routesFor: #put:) add: (url -> #'putFromRequest:').
	(self routesFor: #delete:) add: ((url , '/([^/]+)') -> #'deleteFromRequest:from:').
	(self routesFor: #put:) add: ((url, '/([^/]+)') -> #'updateFromRequest:with:').