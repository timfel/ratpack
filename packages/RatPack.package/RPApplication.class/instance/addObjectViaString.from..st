object handling
addObjectViaString: aString from: aModelname
	
	| jsonObject stream |
	stream := ReadStream on:  aString   from: 1 to: (aString size).
	jsonObject := Json readFrom: stream.
	self addObject: jsonObject from: aModelname