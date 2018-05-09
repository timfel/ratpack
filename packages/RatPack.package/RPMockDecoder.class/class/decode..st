as yet unclassified
decode: anEncodedObject

	anEncodedObject = 'invalid'
		ifTrue: [^ self error: 'Invalid content']
		ifFalse: [^ self fixedAnswer].