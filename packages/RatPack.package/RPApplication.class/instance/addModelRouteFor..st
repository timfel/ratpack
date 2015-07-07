model handling
addModelRouteFor: aRPModelClass

	"#(#get: #post: #put: #delete:)"
	| url |
	url := '/api/', aRPModelClass tableName.
	
	(self routesFor: #get:) add: ((url, '/([^/]+)') -> #'getFromRequest:at:').
	(self routesFor: #get:) add: ((url) -> #'getAllFromRequest:').
	(self routesFor: #put:) add: ((url) -> #'putFromRequest:').
	(self routesFor: #delete:) add: (('/api/', aRPModelClass tableName  , '/([^/]+)') -> #'deleteFromRequest:from:').
	(self routesFor: #put:) add: (('/api/', aRPModelClass tableName , '/([^/]+)') -> #'updateFromRequest:with:').