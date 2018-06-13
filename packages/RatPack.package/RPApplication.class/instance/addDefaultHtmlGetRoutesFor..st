model handling
addDefaultHtmlGetRoutesFor: anRPModelClass

	| htmlUrl |
	htmlUrl := self class htmlRoutePrefix, '(', anRPModelClass name, ')'.
	(self routesFor: #get:) add: ((htmlUrl, self class wildcard) -> #'getObjectFromRequestAsHtml:with:').
	(self routesFor: #get:) add: (htmlUrl -> #'getRegisteredModelsFromRequestAsHtml:')