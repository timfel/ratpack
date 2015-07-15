object handling
loadModelObject: anId from: aRPModelClass
	
	| dictinary objectDictionary |	
	objectDictionary := self modelDictionary at: (aRPModelClass name)
				ifAbsent: [self notify:  aRPModelClass name, ' not found!'].
	dictinary := objectDictionary at: (anId asString asSymbol) ifAbsent: [self notify: 'Object not found!']. 
	^ aRPModelClass constructModel: dictinary
	