object handling
getObject: anID from: aModelName

	| aModelIDDictionary |
	aModelIDDictionary := self database modelDictionary at: aModelName asSymbol
				ifAbsent: [self notify:  aModelName, ' not found!'].
	^aModelIDDictionary at: anID asString asSymbol 
				ifAbsent: [self notify: 'Object with the ID ', anID, ' on ' , aModelName, ' not found!']