object handling
persist: anObject from: aRPModelClass
	
	| objectDictionaries response |
	response := self executeSQLStatement: (self getInsertionStringFor: anObject of: aRPModelClass).
	objectDictionaries :=  self transformToCollection: response.

	^ (objectDictionaries at: 1) at: #id