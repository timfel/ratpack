test - decoding
testJsonDecoder
	| object expected |
	
	object := Dictionary newFrom: (RPJsonContentDecoder decode: '{"a":5,"b":7}').
	expected := Dictionary newFrom: {'a' -> 5. 'b' -> 7}.
	
	self assert: object equals: expected.
	
	object := Array newFrom: (RPJsonContentDecoder decode: '[5, 7, 8]').
	expected := Array newFrom: {5. 7. 8}.
	
	self assert: object equals: expected.