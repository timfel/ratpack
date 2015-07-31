test - routing
testError

	| result |
	result := RPTestHelper get: '/raiseError' on: app.
	self assert: (result contents contents includesSubString: 'My test error').
	self assert: result status =  #serverError.
	self assert: result contentType = 'text/html'
