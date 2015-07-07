object handling
transformResponse: aPGResponse for: aRPModelClass

	| result rows| 
	result := OrderedCollection new.	
	rows := aPGResponse dataRows.
	rows do: [:each | | dict |
		dict := IdentityDictionary new.
		aRPModelClass dataTypes keys do:[ :key | 
		dict at: (key asSymbol ) put: (each atName: key asSymbol)].
		result add: dict].
	^ result


	