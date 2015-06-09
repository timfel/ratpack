object handling
getInstanceOf: aModelName at: id

	models := self database modelDictionary at: aModelName asSymbol.
	^ models at: id asSymbol.