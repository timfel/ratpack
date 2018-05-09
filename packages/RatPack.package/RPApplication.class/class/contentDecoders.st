constants
contentDecoders

	^ Dictionary newFrom: {
		'application/json' -> RPJsonContentDecoder }