object handling
persist: anObject from: aRPModelClass

	| newId |
	newId := self getNextIdForModel:  aRPModelClass.
	[self modelDictionary at: aRPModelClass name ]
		on: KeyNotFound 
		do:[ self modelDictionary at: aRPModelClass name put: IdentityDictionary new].
	(self modelDictionary 
		at: aRPModelClass name)
			 at: (newId asString asSymbol)
			put: (aRPModelClass createJsonFor: anObject).
	^ newId