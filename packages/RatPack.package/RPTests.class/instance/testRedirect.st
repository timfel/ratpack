test - routing
testRedirect
	| result |
	result := RPTestHelper get: '/redirect' on: app.
	self assert: (result contents contents includesSubString: 'moved to').
	self assert: result status = #found.
	self assert: result contentType = 'text/html'