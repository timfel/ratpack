object handling
loadModelObject: anId from: anRPModelClass

	| response objectDictionaries statement |
	statement := 'SELECT * FROM ', (anRPModelClass tableName), ' WHERE ', (anRPModelClass idColumnName),  '=', anId.
	response := self executeSQLStatement: statement.
	objectDictionaries :=  self transformToCollection: response. 
	objectDictionaries ifEmpty: [^ self notify: 'Object not found!'].

	^ anRPModelClass constructModel: (objectDictionaries first)
			
	