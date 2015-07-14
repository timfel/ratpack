object handling
loadModelObject: anId from: aRPModelClass

	| response objectDictionaries |
	response := self executeSQLStatement: ('SELECT * FROM ', (aRPModelClass tableName), ' WHERE ', (aRPModelClass idColumnName),  '=', anId).
	objectDictionaries := self transformToCollection: response. 
	^ (objectDictionaries collect: [:each | aRPModelClass constructModel: each])
			ifEmpty: [self notify: 'Object not found!'];
			first 
	
	