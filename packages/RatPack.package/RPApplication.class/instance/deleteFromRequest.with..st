object handling
deleteFromRequest: aRPModelname with: anId
	
	| anRPModelClass |
	anRPModelClass := self getRegisteredModel: aRPModelname.
	self database deleteObject: anId from: anRPModelClass
	