table handling
createTableFor: aRPModelClass
	
	self modelDictionary at: (aRPModelClass name ) 
						ifAbsent: [ self modelDictionary at: (aRPModelClass name) put: ( IdentityDictionary new ). ^self].
	self notify:  'Model already exists! ' , aRPModelClass name
	