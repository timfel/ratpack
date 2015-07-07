object handling
persist: anObject from: aRPModelClass

	| newId |
	newId := self getNextIdForModel:  aRPModelClass name asSymbol.
	[self modelDictionary at: aRPModelClass name asSymbol ]
		on: KeyNotFound 
		do:[ self modelDictionary at: aRPModelClass name asSymbol put: IdentityDictionary new].
	(self modelDictionary 
		at: aRPModelClass name asSymbol)
			 at: (newId asString asSymbol)
			put: (aRPModelClass createJsonFor: anObject).
	^ newId