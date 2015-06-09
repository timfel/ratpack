object handling
getAllInstancesOf: aModelName 
	| models |
	
	models := self database modelDictionary at: aModelName asSymbol.
	^ (models keys) collect: [:key | models at: key].