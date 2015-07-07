object handling
deleteFromRequest: anId from: aRPModelname
	
	| aRPModelClass |
	aRPModelClass := self getRegisteredModel: aRPModelname.
	self database deleteObject: anId from: aRPModelClass 