object handling
transformToCollection: aPGResponse

	^ aPGResponse dataRows collect: [ :row | self rowToDict: row]



	