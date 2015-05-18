initialize
checkClassForMethod: aString

	^ self refClass canUnderstand: (aString asSymbol)