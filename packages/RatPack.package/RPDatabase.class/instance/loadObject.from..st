object handling
loadObject: anId from: aRPModelClass
	
	| json objectDictionary |	
	objectDictionary := self modelDictionary at: (aRPModelClass name)
				ifAbsent: [self notify:  aRPModelClass name, ' not found!'].
	json := objectDictionary at: (anId asSymbol) ifAbsent: [self notify: 'Object not found!']. 
	^ aRPModelClass createObject: json
	