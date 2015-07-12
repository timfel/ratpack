table handling
dropTableFor: aRPModelClass
	
	self executeSQLStatement: ('DROP TABLE IF EXISTS ', (aRPModelClass tableName)) 
	