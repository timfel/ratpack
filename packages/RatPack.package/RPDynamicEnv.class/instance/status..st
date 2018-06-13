accessing
status: aSymbolOrIntegerOrBlock

	| evaluatedStatus |
	evaluatedStatus := aSymbolOrIntegerOrBlock value.
	self response status: (evaluatedStatus isSymbol
		ifTrue: [evaluatedStatus]
		ifFalse: [HttpResponse statusSymbolFor: evaluatedStatus]).
