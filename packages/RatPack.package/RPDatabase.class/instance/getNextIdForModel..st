object handling
getNextIdForModel: aModelname

	[self idDictionary at: aModelname asSymbol ]
		on: KeyNotFound 
		do:[ self idDictionary at: aModelname asSymbol put: 1].
	self idDictionary at: aModelname asSymbol put: ((self idDictionary at: aModelname asSymbol) + 1).
	^((self idDictionary at: aModelname asSymbol) - 1)