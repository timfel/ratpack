compiling
convertToCode: aString
	"Converts the embedded smalltalk code into string concatenation with"
	| rs |
	rs := ReadStream on: aString.
	^ String streamContents: [:stream |
		self writePreambleFor: aString on: stream.
		[self renderLiteralStringFrom: rs to: stream.
		rs atEnd ifFalse: [self renderCodeFrom: rs to: stream].
		rs atEnd] whileFalse.
		self writePostscriptTo: stream]
