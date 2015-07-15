rendering
render: aString for: anObject

	^ Compiler new evaluate: (self convertToCode: aString) for: anObject logged: false