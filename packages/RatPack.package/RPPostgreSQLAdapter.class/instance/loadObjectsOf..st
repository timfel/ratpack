object handling
loadObjectsOf: aRPModelClass

	| response objectsAsDicts|
	response := self executeSQLStatement: ('SELECT * FROM ', (aRPModelClass tableName)).
	objectsAsDicts := self transformToCollection: response for: aRPModelClass. 
	
	^ objectsAsDicts collect: [:each | (aRPModelClass reconstructObject: each)].