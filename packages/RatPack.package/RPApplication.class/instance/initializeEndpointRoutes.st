initialize-release
initializeEndpointRoutes
	"View all objects/models at /api or /html"

	| apiUrl htmlUrl |
	apiUrl := '/api'.
	htmlUrl := '/html'.
	(self routesFor: #get:) add: (apiUrl -> #'getAllModels').
	(self routesFor: #get:) add: (htmlUrl -> #'getAllModelsFromRequestAsHtml').