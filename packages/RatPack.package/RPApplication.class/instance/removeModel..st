model handling
removeModel: aRPModelClass
	
	self modelClasses removeKey: (aRPModelClass name asSymbol).
	self database dropTableFor: aRPModelClass.
	self removeModelRouteFor: aRPModelClass
	