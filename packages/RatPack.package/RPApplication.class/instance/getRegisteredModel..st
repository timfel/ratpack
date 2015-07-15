model handling
getRegisteredModel: aString

	^ (self modelClasses at: (aString asSymbol))