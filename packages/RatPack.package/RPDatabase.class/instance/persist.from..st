object handling
persist: anObject from: aRPModelClass

	| newId entry|
	newId := self getNextIdForModel:  aRPModelClass.
	[self modelDictionary at: aRPModelClass name ]
		on: KeyNotFound 
		do:[ self modelDictionary at: aRPModelClass name put: IdentityDictionary new].
	entry := (aRPModelClass createAttributeDictionaryFor: anObject).
	entry at: aRPModelClass idColumnName put: newId.
	(self modelDictionary at: aRPModelClass name)
			 at: (newId asString asSymbol)
			put: entry