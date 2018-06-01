test - middleware
testMiddlewareCallChainInterrupt

	RPTestHelper get: '/stopped' on: app.
	self assert: app indexHandlerCalled equals: false.