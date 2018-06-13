private-interaction
createInstanceFromSymbol: aSymbol

	| middlewareInstance |
	middlewareInstance := ( self class environment classNamed: aSymbol ) new.
	middlewareInstance settings: self settings.
	^ middlewareInstance
	