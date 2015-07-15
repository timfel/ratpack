object handling
rowToDict: aPGRow

	"aRPModelClass dataTypes keysDo:[ :key | 
		dict at: (key asSymbol ) put: (aPGRow atName: key asSymbol)]."
	^ aPGRow dictionary collect: [:index | aPGRow at: index].
	