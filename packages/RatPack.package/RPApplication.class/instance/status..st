accessing
status: aSymbolOrInteger

	self response status: (aSymbolOrInteger isSymbol
		ifTrue: [aSymbolOrInteger]
		ifFalse: [HttpResponse statusSymbolFor: aSymbolOrInteger]).
