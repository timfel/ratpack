object handling
postFromRequest: aRPModelname
	
	| jsonString aRPModelClass|
	aRPModelClass := self getRegisteredModel: aRPModelname.
	jsonString := (self threadLocal: RPApplication requestKey) rawPostContents.
	self persistObjectBy: jsonString from: aRPModelClass.
	
	