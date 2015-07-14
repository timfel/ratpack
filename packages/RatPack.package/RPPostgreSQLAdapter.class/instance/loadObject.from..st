object handling
loadObject: anId from: aRPModelClass

	| response objectDictionaries |
	response := self executeSQLStatement: ('SELECT * FROM ', (aRPModelClass tableName), ' WHERE ', self idColumnName,  '=', anId).
	objectDictionaries := self transformToCollection: response for: aRPModelClass. 
	^ (objectDictionaries collect: [:each | aRPModelClass reconstructObject: each])
			ifEmpty: [self notify: 'Object not found!'];
			first 
	
	