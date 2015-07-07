model handling
addModelRouteFor: aRPModelClass

	"#(#get: #post: #put: #delete:)"
	| url |
	url := '/api/', aRPModelClass tableName.
	
	(self routesFor: #get:) add: ((url, '/([^/]+)') -> #'getObjectAsJsonStringFrom:at:').
	(self routesFor: #get:) add: ((url) -> #'getAllObjectsAsJsonStringFrom:').
	(self routesFor: #put:) add: ((url) -> #'putObjectIntoDatabase:').
	(self routesFor: #delete:) add: (('/api/', aRPModelClass tableName  , '/([^/]+)') -> #'removeObject:from:').
	(self routesFor: #put:) add: (('/api/', aRPModelClass tableName , '/([^/]+)') -> #'updateObjectInDatabase:withID:').