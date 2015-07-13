object handling
update: anObject with: anId from: aRPModelClass
	
	[self modelDictionary at: aRPModelClass name ]
		on: KeyNotFound 
		do:[ self modelDictionary at: (aRPModelClass name)  put: (IdentityDictionary new)].
	(self modelDictionary 
		at: aRPModelClass name ) 
			at: (anId asString asSymbol)
			put: (aRPModelClass createJsonFor: anObject).
	
	