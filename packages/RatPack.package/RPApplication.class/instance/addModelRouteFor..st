model handling
addModelRouteFor: aRPModelClass

	"#(#get: #post: #put: #delete:)"
	| apiUrl htmlUrl |
	apiUrl := '/api/', (aRPModelClass name).
	htmlUrl := '/html/', (aRPModelClass name).
	
	(self routesFor: #get:) add: ((apiUrl, '/([^/]+)') -> #'getObjectFromRequest:with:').
	(self routesFor: #get:) add: (apiUrl -> #'getRegisteredObjectsFromRequest:').
	(self routesFor: #put:) add: (apiUrl -> #'putFromRequest:').
	(self routesFor: #delete:) add: ((apiUrl , '/([^/]+)') -> #'deleteFromRequest:with:').
	(self routesFor: #put:) add: ((apiUrl, '/([^/]+)') -> #'updateFromRequest:with:').

	(self routesFor: #get:) add: ((htmlUrl, '/([^/]+)') -> #'getObjectFromRequestAsHtml:with:').
	(self routesFor: #get:) add: (htmlUrl -> #'getRegisteredModelsFromRequestAsHtml:')