object handling
persist: anObject from: aRPModelClass

	self executeSQLStatement: (self getInsertionStringFor: anObject of: aRPModelClass) 
