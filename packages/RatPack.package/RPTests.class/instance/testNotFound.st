tests
testNotFound
	| result |
	result := RPTestHelper get: '/thisDoesNotExist' on: app.
	self assert: (result contents contents includesSubString: 'Try this').
	self assert: result status = #notFound.
	self assert: result contentType = 'text/html'