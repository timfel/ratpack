test - routing
testCaptureGroups
	
	RPTestHelper get: '/captureGroups/number/1/word/Test' on: app.
	self assert: (app dynamicEnvironment at: #number) equals: 1.
	self assert: (app dynamicEnvironment at: #word) equals: 'Test'.