object handling
loadModelObject: anId from: anRPModelClass
	
	| objectDictionaries |
	objectDictionaries := self loadModelObjectHelperFrom: anRPModelClass.
	^ objectDictionaries at: (anId asString asSymbol) 
									ifAbsent: [self notify: 'Object not found!']. 
	
	