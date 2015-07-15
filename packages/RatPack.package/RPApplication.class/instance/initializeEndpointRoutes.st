initialize-release
initializeEndpointRoutes

	| apiUrl htmlUrl |
	apiUrl := '/api'.
	htmlUrl := '/html'.

	(self routesFor: #get:) add: (apiUrl -> #'getAllModels').
	(self routesFor: #get:) add: (htmlUrl -> #'getAllModelsFromRequestAsHtml').