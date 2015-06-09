object handling
putObjectIntoDatabase: aModelName

	| jsonString |
	jsonString := (self threadLocal: RPApplication requestKey) rawPutContents.
	self addObjectViaString: jsonString from: aModelName