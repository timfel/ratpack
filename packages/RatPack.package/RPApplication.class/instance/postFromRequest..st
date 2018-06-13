object handling
postFromRequest: aRPModelname
	
	| jsonString aRPModelClass responseId |
	aRPModelClass := self getRegisteredModel: aRPModelname.
	jsonString := self request rawPostContents.
	responseId := self persistObjectBy: jsonString from: aRPModelClass.
	^ self getObjectFromRequest: aRPModelname with: responseId.
