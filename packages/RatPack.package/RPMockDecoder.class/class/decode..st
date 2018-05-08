as yet unclassified
decode: anEncodedObject

	anEncodedObject = 'invalid'
		ifTrue: [^ self error: 'Invalid content']
		ifFalse: [^ Dictionary newFrom: {'a' -> 5. 'b' -> 7}].