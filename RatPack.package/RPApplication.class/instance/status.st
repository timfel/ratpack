accessing
status
	
	^ (self threadLocal: self class responseKey) statusCode asInteger
