sql helpers
getValueStringFor: anObject of: aRPModelClass
	
	| strings |
	strings := aRPModelClass dataTypes keys 
		collect: [:attribute | self getSQLValueOf: anObject ofModel: aRPModelClass from: attribute].
	^ strings joinSeparatedBy: ', '




		
 