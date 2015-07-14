object handling
rowToDict: aPGRow for: aRPModelClass

	| dict |
	dict := IdentityDictionary new.
	aRPModelClass dataTypes keysDo:[ :key | 
		dict at: (key asSymbol ) put: (aPGRow atName: key asSymbol)].
	^ dict