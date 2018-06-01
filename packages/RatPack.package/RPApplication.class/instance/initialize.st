initialize-release
initialize

	super initialize.
	
	settings := RPSettings new.
	
	self onRequestDo: [:httpRequest | self processRequest: httpRequest];
		initializeDynamicVariables;
		initializeRoutes;
		initializePragmaMiddleware;
		initializeLogging.