sql helpers
getUpdatedValues: anObject from: aRPModelClass

	
	^ aRPModelClass dataTypes keys 
			collect: [:attribute | attribute, ' = ', (self getSQLValueOf: anObject ofModel: aRPModelClass from: attribute)]