object handling
putFromRequest: aRPModelClass
	
	| jsonString |
	jsonString := (self threadLocal: RPApplication requestKey) rawPutContents.
	self addObjectViaString: jsonString from: aRPModelClass