test - middleware
testMiddlewarePreHookFalse
	
	| env |
	env := RPTestHelper getExampleEnvironment.
	RPStoppingMiddleware new handle: env next: [self assert: false].
	self assert: (env at: #preHookCounter) equals: 1.
	self assert: (env at: #postHookCounter) equals: 0.