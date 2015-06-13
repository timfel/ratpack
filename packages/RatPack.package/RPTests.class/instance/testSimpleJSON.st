test - routing
testSimpleJSON
	| result |
	result := RPTestHelper get: '/simpleJSON' on: app.
	self assert: (result contents contents  = '{"Name":"Test","Port":"1111","Users":["me","you"],"Text":{"Header":"testheader", "Content":"blabla"},"value":30,"finished":true}').
	self assert: result status = #ok.
	self assert: result contentType = 'application/json'