object handling
getAllObjectsFrom: aModelName

	| aModelIDDictionary |
	
	aModelIDDictionary := self modelDictionary at: aModelName asSymbol
				ifAbsent: [self notify:  aModelName, ' not found!'].
	^ (aModelIDDictionary keys) collect: [:key | aModelIDDictionary at: key]
