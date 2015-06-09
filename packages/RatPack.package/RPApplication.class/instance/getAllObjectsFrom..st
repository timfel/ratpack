object handling
getAllObjectsFrom: aModelName

	^self database modelDictionary at: aModelName asSymbol
				ifAbsent: [self notify:  aModelName, ' not found!']
