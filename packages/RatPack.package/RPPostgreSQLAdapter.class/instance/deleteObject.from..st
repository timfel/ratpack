object handling
deleteObject: anId from: aRPModelClass
	
	^ self executeSQLStatement:  ('DELETE FROM ', (aRPModelClass tableName), ' WHERE ', (aRPModelClass idColumnName),  '= ', anId)