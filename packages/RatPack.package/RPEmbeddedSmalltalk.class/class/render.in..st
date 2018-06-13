rendering
render: aString in: aContext

	^ Compiler new evaluate: (self convertToCode: aString) in: aContext to: aContext receiver