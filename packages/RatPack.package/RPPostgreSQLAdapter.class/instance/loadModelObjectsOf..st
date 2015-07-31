object handling
loadModelObjectsOf: anRPModelClass

	| response objectsAsDicts |
	response := self executeSQLStatement: ('SELECT * FROM ', (anRPModelClass tableName)).
	objectsAsDicts := self transformToCollection: response. 
	^ objectsAsDicts collect: [:each | (anRPModelClass constructModel: each)].