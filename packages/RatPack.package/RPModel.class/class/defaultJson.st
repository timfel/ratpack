object conversion
defaultJson
	
	| jsonDict json |
	jsonDict := IdentityDictionary new.
	self dataTypes keysDo: [:key | jsonDict at: key put: (self defaultValues at: key ifAbsent: [''])].
	json := WriteStream on: String new.
	jsonDict jsonWriteOn: json.
	^ json contents