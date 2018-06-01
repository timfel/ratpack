test - middleware
testMiddlewareAutoglobalMiddleware

	| env |
	RPTestHelper get: '/autoGlobalMiddleware' on: app.
	env := app dynamicEnvironment.
	self assert: (app dynamicEnvironment at: #RPTestMiddlewarePreHookTime) equals: 1.
	self assert: (app dynamicEnvironment at: #RPWordCountMiddlewarePreHookTime) equals: 2.
	self assert: (app dynamicEnvironment at: #RPUppercaseMiddlewarePreHookTime) equals: 3.
	self assert: (app dynamicEnvironment at: #RPUppercaseMiddlewarePostHookTime) equals: 4.
	self assert: (app dynamicEnvironment at: #RPWordCountMiddlewarePostHookTime) equals: 5.
	self assert: (app dynamicEnvironment at: #RPTestMiddlewarePostHookTime) equals: 6.