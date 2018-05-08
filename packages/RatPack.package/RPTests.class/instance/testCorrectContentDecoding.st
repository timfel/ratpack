test - decoding
testCorrectContentDecoding
	
	| request |
	
	request := RPMockRequest method: 'PUT' rawUrl: 'url' headers: (Dictionary newFrom: {'Content-Type' -> 'test/contenttype'}) content: ''.
	app processRequest: request.
	self assert: (app parsedRequestContents) equals: (RPMockDecoder decode: '').
	app parsedRequestContents: nil.
	
	request := RPMockRequest method: 'POST' rawUrl: 'url' headers: (Dictionary newFrom: {'Content-Type' -> 'test/contenttype'}) content: ''.
	app processRequest: request.
	self assert: (app parsedRequestContents) equals: (RPMockDecoder decode: '').