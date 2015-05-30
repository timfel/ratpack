registering models
getRegisteredModel: aString

	^ (self models at: (aString asSymbol))