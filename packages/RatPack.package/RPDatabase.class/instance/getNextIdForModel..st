object handling
getNextIdForModel: aRPModelClass

	| aSymbol |
	aSymbol := aRPModelClass name.
	[self idDictionary at: aSymbol]
		on: KeyNotFound 
		do:[ self idDictionary at: aSymbol put: 1].
	self idDictionary at: aSymbol put: ((self idDictionary at: aSymbol) + 1).
	^((self idDictionary at: aSymbol) - 1)