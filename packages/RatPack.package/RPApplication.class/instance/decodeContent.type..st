routing
decodeContent: aContent type: aType

	| decoder |
	decoder := (self class contentDecoders) at: (aType asLowercase) ifAbsent: [^ self error: 'Decoder missing'].

	self parsedRequestContents: (decoder decode: aContent).