converting
asJson

	| jsonDict stream |
	jsonDict := Dictionary new.
	jsonDict at: #object put: ((self class) createAttributeDictionaryFor: (self object)).
	jsonDict at: #metadata put: self metadata.
	stream := WriteStream on: String new.
	jsonDict jsonWriteOn: stream.
	^ stream contents  