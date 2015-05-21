object handling
getUniqueID
	
	IDCounter ifNil: [IDCounter := 0].
	^IDCounter := IDCounter + 1