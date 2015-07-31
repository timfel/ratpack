object conversion
initializeObjectFrom: aJsonObject

	| newObject |
	
	newObject := self refClass new.
	self dataTypes keysDo: 
		[:key | newObject instVarNamed: key put: (aJsonObject at: key 
								ifAbsent: [self defaultValues at: key])].
	^ newObject