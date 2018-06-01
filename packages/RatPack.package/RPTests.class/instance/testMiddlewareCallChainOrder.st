test - middleware
testMiddlewareCallChainOrder

	RPTestHelper get: '/chainOrder' on: app.
	self assert: (app dynamicEnvironment at: #RPWordCountMiddlewarePreHookTime) equals: 1.
	self assert: (app dynamicEnvironment at: #RPTestMiddlewarePreHookTime) equals: 2.
	self assert: (app dynamicEnvironment at: #RPUppercaseMiddlewarePreHookTime) equals: 3.
	self assert: (app dynamicEnvironment at: #RPUppercaseMiddlewarePostHookTime) equals: 4.
	self assert: (app dynamicEnvironment at: #RPTestMiddlewarePostHookTime) equals: 5.
	self assert: (app dynamicEnvironment at: #RPWordCountMiddlewarePostHookTime) equals: 6.