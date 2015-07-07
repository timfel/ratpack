table handling
createTableFor: aRPModelClass
	
	self modelDictionary at: (aRPModelClass name asSymbol) 
						ifAbsent: [ self modelDictionary at: (aRPModelClass name asSymbol) put: ( IdentityDictionary new ). ^self].
	self notify:  'Model already exists! ' , aRPModelClass name
	