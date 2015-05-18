initialize
checkClassForMethod: aString
	
	^ self refClass canUnderstand: (('REST' , aString) asSymbol)
