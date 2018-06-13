routes
handleRequestForIndex
	<get: '/index'>
	<put: '/index'>
	<post: '/index'>
	
	indexHandlerCalled := true.
	
	^ 'Hello World'