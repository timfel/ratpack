routes
handleRequestForStopped
	
	<get: '/stopped'>
	<middleware: #(#RPStoppingMiddleware) >
	
	indexHandlerCalled := true.
