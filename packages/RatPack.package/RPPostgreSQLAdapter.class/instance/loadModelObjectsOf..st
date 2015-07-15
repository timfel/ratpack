object handling
loadModelObjectsOf: aRPModelClass

	| response objectsAsDicts |
	response := self executeSQLStatement: ('SELECT * FROM ', (aRPModelClass tableName)).
	objectsAsDicts := self transformToCollection: response. 
	
	^ objectsAsDicts collect: [:each | (aRPModelClass constructModel: each)].