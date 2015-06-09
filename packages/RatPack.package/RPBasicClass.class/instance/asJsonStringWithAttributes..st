initialize
asJsonStringWithAttributes: anAttributArray

	| dictionary stream |

	dictionary := Dictionary new.
	stream := WriteStream on: String new.
	anAttributArray do: [:each |
			dictionary at: each put: (self instVarNamed: each value)].
	dictionary jsonWriteOn: stream.
	^stream contents