object handling
deleteFromRequest: aRPModelname with: anId
	
	| aRPModelClass |
	aRPModelClass := self getRegisteredModel: aRPModelname.
	self database deleteObject: anId from: aRPModelClass
	