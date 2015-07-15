object conversion
createJsonFor: anObject

	| dictionary stream |
	(self validateObject: anObject) ifFalse: [self notify: 'No valid object for creating a json by this model!'].
	dictionary := Dictionary new.
	stream := WriteStream on: String new.
	self dataTypes keys do: [:each |
			dictionary at: each put: (anObject instVarNamed: each value)].
	dictionary jsonWriteOn: stream.
	^stream contents