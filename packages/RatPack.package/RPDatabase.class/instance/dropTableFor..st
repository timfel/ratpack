table handling
dropTableFor:  aRPModelClass

	self modelDictionary removeKey: (aRPModelClass name asSymbol)