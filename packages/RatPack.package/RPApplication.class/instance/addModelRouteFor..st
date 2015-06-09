model handling
addModelRouteFor: anRPModelName

	"#(#get: #post: #put: #delete:)"
	| url |
	url := '/api/', anRPModelName.
	
	(self routesFor: #get:) add: (('/api/', anRPModelName , '/([^/]+)') -> #'getObjectAsJsonStringfrom:at:').
	(self routesFor: #get:) add: (('/api/', anRPModelName) -> #'getAllObjectsAsJsonStringfrom:').
	(self routesFor: #put:) add: (('/api/', anRPModelName) -> #'putObjectIntoDatabase:')