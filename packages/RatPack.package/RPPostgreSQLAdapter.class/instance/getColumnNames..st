sql helpers
getColumnNames: aRPModelClass
	
	^ aRPModelClass dataTypes keys joinSeparatedBy: ', '




		
 