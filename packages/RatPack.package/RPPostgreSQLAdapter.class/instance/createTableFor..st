table handling
createTableFor: aRPModelClass

	self executeSQLStatement: (self getCreateTableString: aRPModelClass)