routing
decodeContent: aContent type: aType

	| decoder |
	decoder := (self class contentDecoders) at: aType ifAbsent: [^ self error: 'Decoder missing'].

	self parsedRequestContents: (decoder decode: aContent).