object handling
getNextIdForModel: aRPModelClass

	[self idDictionary at: aRPModelClass name asSymbol ]
		on: KeyNotFound 
		do:[ self idDictionary at: aRPModelClass name asSymbol put: 1].
	self idDictionary at: aRPModelClass name asSymbol put: ((self idDictionary at: aRPModelClass name asSymbol) + 1).
	^((self idDictionary at: aRPModelClass name asSymbol) - 1)