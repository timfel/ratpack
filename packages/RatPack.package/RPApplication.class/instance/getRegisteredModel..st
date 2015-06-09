model handling
getRegisteredModel: aString

	^ (self models at: (aString asSymbol))