object handling
deleteObject: anId from: aRPModelClass
	
	| objects |
	objects := (self modelDictionary at: aRPModelClass name).
	objects removeKey: (anId asString asSymbol)