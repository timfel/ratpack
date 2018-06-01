test - middleware
testMiddlewarePreHookTrue
	
	| env blockCalled |
	blockCalled := false.
	env := RPTestHelper getExampleEnvironment.
	RPTestMiddleware new handle: env next: [blockCalled := true].
	self assert: (env at: #preHookCounter) equals: 1.
	self assert: (env at: #postHookCounter) equals: 1.
	self assert: blockCalled.