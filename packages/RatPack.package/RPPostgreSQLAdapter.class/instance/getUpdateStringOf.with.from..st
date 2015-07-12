object handling
getUpdateStringOf: anObject with: anId from: aRPModelClass

	| updatedValues |
	updatedValues := 	aRPModelClass dataTypes keys 
							collect: [:attribute | attribute, ' = ', self getSQLValueOf: anObject ofModel: aRPModelClass from: attribute].
	updatedValues add: (self idColumnName,  ' = ', anId).
	^ ('UPDATE ', (aRPModelClass tableName), 
			' SET ', updatedValues joinSeparatedBy: ',' ,
			' WHERE ',  self idColumnName,  ' = ', anId)
	