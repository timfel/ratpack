object conversion
createJsonFor: aObject

	| dictionary stream |

	(self validateObject: aObject)ifFalse:[self notify: 'No valid object for creating a json by this model!'].
	dictionary := Dictionary new.
	stream := WriteStream on: String new.
	self dataTypes keys do: [:each |
			dictionary at: each put: (aObject instVarNamed: each value)].
	dictionary jsonWriteOn: stream.
	^stream contents