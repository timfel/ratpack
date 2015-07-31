sql helpers
getUpdateStringOf: anObject with: anId from: anRPModelClass

	| updatedValues |
	updatedValues := self getUpdatedValues: anObject from: anRPModelClass.

	^ ('UPDATE ', (anRPModelClass tableName), 
			' SET ', (updatedValues joinSeparatedBy: ', '),
			' WHERE ',  (anRPModelClass idColumnName),  ' = ', anId)
	