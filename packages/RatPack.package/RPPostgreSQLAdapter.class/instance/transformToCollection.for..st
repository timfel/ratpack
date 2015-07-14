object handling
transformToCollection: aPGResponse for: aRPModelClass

	^ aPGResponse dataRows collect: [ :row | self rowToDict: row for: aRPModelClass]



	