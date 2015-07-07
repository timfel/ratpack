object handling
putObjectIntoDatabase: aRPModelClass
	
	| jsonString |
	jsonString := (self threadLocal: RPApplication requestKey) rawPutContents.
	self addObjectViaString: jsonString from: aRPModelClass