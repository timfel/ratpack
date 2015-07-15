sql helpers
getUpdateStringOf: anObject with: anId from: aRPModelClass

	| updatedValues |
	updatedValues := 	(aRPModelClass dataTypes keys 
							collect: [:attribute | attribute, ' = ', (self getSQLValueOf: anObject 
																	ofModel: aRPModelClass 
																	from: attribute)]).

	^ ('UPDATE ', (aRPModelClass tableName), 
			' SET ', (updatedValues joinSeparatedBy: ', '),
			' WHERE ',  (aRPModelClass idColumnName),  ' = ', anId)
	