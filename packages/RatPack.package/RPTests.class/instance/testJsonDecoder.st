test - decoding
testJsonDecoder
	| object expected |
	
	object := RPJsonContentDecoder decode: '{"a":5,"b":7}'.
	expected := Dictionary newFrom: {'a' -> 5. 'b' -> 7}.
	
	self assert: object equals: expected.