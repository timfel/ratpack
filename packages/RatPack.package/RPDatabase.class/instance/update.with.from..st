object handling
update: anObject with: anId from: aRPModelClass
	
	| entry |
	[self modelDictionary at: aRPModelClass name ]
		on: KeyNotFound 
		do:[ self modelDictionary at: (aRPModelClass name)  put: (IdentityDictionary new)].
	
	entry := (aRPModelClass createAttributeDictionaryFor: anObject).
	entry at: aRPModelClass idColumnName put: anId.

	(self modelDictionary at: aRPModelClass name ) 
			at: (anId asString asSymbol)
			put: entry.
	
	