object handling
writeObject: anObject from: anRPModelClass withId: anId
	| entry |
	entry := (anRPModelClass createAttributeDictionaryFor: anObject).
	entry at: anRPModelClass idColumnName put: anId.

	(self modelDictionary at: anRPModelClass name ) 
			at: (anId asString asSymbol)
			put: entry.