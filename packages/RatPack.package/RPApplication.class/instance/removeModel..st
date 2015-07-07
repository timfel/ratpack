model handling
removeModel: aRPModelClass
	
	self modelClasses removeKey: (aRPModelClass name asSymbol).
	self database dropTable: aRPModelClass tableName.
	self removeModelRouteFor: aRPModelClass
	