model handling
addModelRouteFor: anRPModelName

	"#(#get: #post: #put: #delete:)"
	| url |
	url := '/api/', anRPModelName.
	
	(self routesFor: #get:) add: (('/api/', anRPModelName , '/([^/]+)') -> #'getObjectAsJsonStringFrom:at:').
	(self routesFor: #get:) add: (('/api/', anRPModelName) -> #'getAllObjectsAsJsonStringFrom:').
	(self routesFor: #put:) add: (('/api/', anRPModelName , '/([^/]+)') -> #'updateObjectInDatabase:withID:').
	(self routesFor: #put:) add: (('/api/', anRPModelName) -> #'putObjectIntoDatabase:').
	
	