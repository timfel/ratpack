test - routing
testGlobalHeaders
	
	| result |
	result := RPTestHelper get: '/index' on: app.

	self assert: result status =  #ok.
	self assert: result contentType = 'text/html'.
	self assert: (result fieldAt: 'global-headers-work' ifAbsent:['global headers field is missing']) equals: 'true'.
	self assert: (result fieldAt: 'date' ifAbsent:['date field is missing']) equals: TimeStamp now asString.