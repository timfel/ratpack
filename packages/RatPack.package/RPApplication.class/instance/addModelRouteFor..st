model handling
addModelRouteFor: anRPModelName

	"#(#get: #post: #put: #delete:)"
	| url |
	url := '/api/', anRPModelName.
	
	(self routesFor: #get:) add: (('/api/', anRPModelName , '/([^/]+)') -> #'getInstanceOf:at:').
	(self routesFor: #get:) add: (('/api/', anRPModelName) -> #'getAllInstancesOf:').
	(self routesFor: #put:) add: (('/api/', anRPModelName) -> #'putObjectIntoDatabase:')