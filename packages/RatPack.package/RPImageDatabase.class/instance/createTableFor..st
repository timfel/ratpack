table handling
createTableFor: anRPModelClass
	
	| modelName | 
	modelName := anRPModelClass name.
	(self modelDictionary includesKey: modelName)
		ifTrue: [self notify:  'Model already exists! ' , modelName].

	self modelDictionary at: (modelName) put: (IdentityDictionary new).
	self idDictionary at: modelName put: 1 

	
	