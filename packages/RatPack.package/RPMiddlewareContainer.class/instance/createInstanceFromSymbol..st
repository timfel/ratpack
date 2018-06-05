private-interaction
createInstanceFromSymbol: aSymbol

	^ ( self class environment classNamed: aSymbol ) new
	