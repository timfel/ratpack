object handling
update: anObject with: anId from: aRPModelClass

	self executeSQLStatement: (self getUpdateStringOf: anObject with: (anId asNumber) from: aRPModelClass)