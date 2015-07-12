sql helpers
convertModelToSQLString: aRPModelClass

	^ (aRPModelClass dataTypes associations collect: 
		[:assoc | self convertAssociationToSQLString: assoc]) joinSeparatedBy: ', '	