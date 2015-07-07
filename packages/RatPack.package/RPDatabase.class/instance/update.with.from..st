object handling
update: anObject with: anId from: aRPModelClass
	
	[self modelDictionary at: aRPModelClass name asSymbol ]
		on: KeyNotFound 
		do:[ self modelDictionary at: aRPModelClass name asSymbol put: IdentityDictionary new].
	self modelDictionary 
		at: (aRPModelClass name asSymbol at: anId asString asSymbol)  
		put: (aRPModelClass createJsonFor: anObject).
	
	