converting
metadataAsJson

	| stream |
	stream := WriteStream on: String new.
	self metadata jsonWriteOn: stream.
	^ stream contents