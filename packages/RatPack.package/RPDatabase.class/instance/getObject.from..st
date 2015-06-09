object handling
getObject: anID from: aModelName

	| aModelIDDictionary |
	aModelIDDictionary := self modelDictionary at: aModelName asSymbol
				ifAbsent: [self notify:  'Model named ', aModelName, ' not found!'].
	^aModelIDDictionary at: anID asString asSymbol
				ifAbsent: [self notify: 'Object with the ID ', anID, ' on ' , aModelName, ' not found!']