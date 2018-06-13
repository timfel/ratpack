test - decoding
testUnknownContentTypeDecoding
	
	RPTestHelper put: '/index' on: app headers: (Dictionary newFrom: {'Content-Type' -> 'test/unknown'}) content: ''.
	self assert: (app parsedRequestContents) equals: nil.
	
	RPTestHelper post: '/index' on: app headers: (Dictionary newFrom: {'Content-Type' -> 'test/unknown'}) content: ''.
	self assert: (app parsedRequestContents) equals: nil.