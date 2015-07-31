object handling
loadModelObject: anId from: anRPModelClass
	
	| object |

	object := (self modelDictionary at: (anRPModelClass name)) at: (anId asString asSymbol) 
		ifAbsent: [self notify:  anRPModelClass name, ' not found!'].
	
	^ anRPModelClass constructModel: object.   
	 