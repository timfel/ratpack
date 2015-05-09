as yet unclassified
testIndex
	| result |
	result := RPTestHelper get: '/index' on: app.
	self assert: (result contents contents includesSubString: 'Hello World').
	self assert: result status =  #ok.
	self assert: result contentType = 'text/html'