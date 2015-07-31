object handling
loadModelObjectHelperFrom: anRPModelClass 
	
	| objectDictionary |
	objectDictionary := self modelDictionary at: (anRPModelClass name)
				ifAbsent: [self notify:  anRPModelClass name, ' not found!'].
	^ objectDictionary collect:[ :each | 
			anRPModelClass constructModel: each]