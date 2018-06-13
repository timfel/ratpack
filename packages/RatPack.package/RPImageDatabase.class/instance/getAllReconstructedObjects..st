object handling
getAllReconstructedObjects: anRPModelClass 
	
	| objectsFromClass |
	objectsFromClass := self modelDictionary at: (anRPModelClass name)
				ifAbsent: [self notify:  anRPModelClass name, ' not found!'].
	^ objectsFromClass collect:[:each | anRPModelClass constructModel: each]