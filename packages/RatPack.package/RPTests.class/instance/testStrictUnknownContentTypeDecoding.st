test - decoding
testStrictUnknownContentTypeDecoding
	
	| request response |
	
	request := RPMockRequest method: 'PUT' rawUrl: 'url' headers: (Dictionary newFrom: {'Content-Type' -> 'test/unknown'}) content: ''.
	response := strictApp processRequest: request.
	self assert: (strictApp parsedRequestContents) equals: nil.
	self assert: response body equals: strictApp class badRequestPage.
	
	request := RPMockRequest method: 'POST' rawUrl: 'url' headers: (Dictionary newFrom: {'Content-Type' -> 'test/unknown'}) content: ''.
	response := strictApp processRequest: request.
	self assert: (strictApp parsedRequestContents) equals: nil.
	self assert: response body equals: strictApp class badRequestPage.