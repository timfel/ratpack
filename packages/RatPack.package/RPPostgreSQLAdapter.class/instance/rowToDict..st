object handling
rowToDict: aPGRow

	^ aPGRow dictionary collect: [:index | aPGRow at: index].
	