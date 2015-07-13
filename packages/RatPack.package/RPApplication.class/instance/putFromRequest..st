object handling
putFromRequest: aRPModelname
	
	| jsonString aRPModelClass|
	aRPModelClass := self getRegisteredModel: aRPModelname.
	jsonString := (self threadLocal: RPApplication requestKey) rawPutContents.
	self persistObjectBy: jsonString from: aRPModelClass.
	
	