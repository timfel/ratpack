test - decoding
testUnknownContentTypeDecoding
	
	| request |
	
	request := RPMockRequest method: 'PUT' rawUrl: 'url' headers: (Dictionary newFrom: {'Content-Type' -> 'test/unknown'}) content: ''.
	app processRequest: request.
	self assert: (app parsedRequestContents) equals: nil.
	
	request := RPMockRequest method: 'POST' rawUrl: 'url' headers: (Dictionary newFrom: {'Content-Type' -> 'test/unknown'}) content: ''.
	app processRequest: request.
	self assert: (app parsedRequestContents) equals: nil.