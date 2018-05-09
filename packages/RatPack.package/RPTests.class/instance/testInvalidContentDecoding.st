test - decoding
testInvalidContentDecoding
	
	RPTestHelper put: '/index' on: app headers: (Dictionary newFrom: {'Content-Type' -> 'test/contenttype'}) content: 'invalid'.
	self assert: (app parsedRequestContents) equals: nil.
	self assert: app indexHandlerCalled equals: true.
	
	RPTestHelper post: '/index' on: app headers: (Dictionary newFrom: {'Content-Type' -> 'test/contenttype'}) content: 'invalid'.
	self assert: (app parsedRequestContents) equals: nil.
	self assert: app indexHandlerCalled equals: true.