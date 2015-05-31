object handling
removeObject: id from: aModelname
	
	| objectsForModel |
	objectsForModel := (self modelDictionary at: aModelname asSymbol).
	objectsForModel removeKey: (id asString asSymbol)