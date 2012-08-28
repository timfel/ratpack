accessing
contentType

	^ (self threadLocal: self class responseKey) contentType