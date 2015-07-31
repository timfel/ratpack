object conversion
defaultJson
	
	| jsonDict |
	jsonDict := IdentityDictionary new.
	self dataTypes keysDo: [:key | jsonDict at: key put: (self defaultValues at: key ifAbsent: [''])].
	^ jsonDict asJsonString