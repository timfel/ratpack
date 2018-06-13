test - middleware
testMiddlewareBlacklist

	RPTestHelper get: '/blacklistedHandler' on: app.
	app dynamicEnvironment at: #preHookCounter ifPresent: [ self assert: false ].
	app dynamicEnvironment at: #postHookCounter ifPresent: [ self assert: false ].
	