helpers
defaultJsonFor: anRPModelClassName
	
	| jsonDict json anRPModelClass |
	jsonDict := IdentityDictionary new.
	anRPModelClass := (Smalltalk classNamed: anRPModelClassName). 
	anRPModelClass dataTypes keysDo: [:key |
								jsonDict at: key put: (anRPModelClass defaultValues at: key ifAbsent: [''])].
	json := WriteStream on: String new.
	jsonDict jsonWriteOn: json.
	^ json contents