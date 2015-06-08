model handling
addModelRouteFor: anRPModelName
	
	#(#get: #put: #post: #delete:) do: [:method | | url |
		url := '/api/', anRPModelName.
		(self routesFor: method) add: (url -> #'handleApiRoute')]