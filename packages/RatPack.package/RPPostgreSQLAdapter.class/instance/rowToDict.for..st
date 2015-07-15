object handling
rowToDict: aPGRow for: aRPModelClass

	"aRPModelClass dataTypes keysDo:[ :key | 
		dict at: (key asSymbol ) put: (aPGRow atName: key asSymbol)]."
	^ aPGRow dictionary collect: [:index | aPGRow at: index].
	