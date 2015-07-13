object handling
loadObjectsOf: aRPModelClass

	| response objectsAsDicts|
	self connection startup.
	response := self connection execute: ('SELECT * FROM ', (aRPModelClass tableName)).
	self connection terminate.
	objectsAsDicts := self transformResponse: response for: aRPModelClass. 
	
	^ objectsAsDicts collect: [:each | (aRPModelClass reconstructObject: each)].