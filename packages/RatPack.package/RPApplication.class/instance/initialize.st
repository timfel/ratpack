initialize-release
initialize

	super initialize.
	self onRequestDo: [:httpRequest | self processRequest: httpRequest].
	self initializeDynamicVariables.
	self initializeRoutes. 
	self initializeLogging.
	self initializePragmaRoutes
