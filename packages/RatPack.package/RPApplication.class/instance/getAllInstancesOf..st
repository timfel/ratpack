object handling
getAllInstancesOf: aModelName 
	
	models := self database modelDictionary at: aModelName asSymbol.
	^ (models keys) collect: [:key | models at: key].