model handling
addModelRouteFor: anRPModelName

	"#(#get: #post: #put: #delete:)"
	| url |
	url := '/api/', anRPModelName.
	
	(self routesFor: #get:) add: ((url, '/([^/]+)') -> #'getObjectAsJsonStringFrom:at:').
	(self routesFor: #get:) add: ((url) -> #'getAllObjectsAsJsonStringFrom:').
	(self routesFor: #put:) add: ((url) -> #'putObjectIntoDatabase:').
	(self routesFor: #delete:) add: (('/api/', anRPModelName , '/([^/]+)') -> #'removeObject:from:').
	(self routesFor: #put:) add: (('/api/', anRPModelName , '/([^/]+)') -> #'updateObjectInDatabase:withID:').