object handling
postFromRequest: aRPModelname
	
	| jsonString aRPModelClass|
	aRPModelClass := self getRegisteredModel: aRPModelname.
	jsonString := self request rawPostContents.
	self persistObjectBy: jsonString from: aRPModelClass.
