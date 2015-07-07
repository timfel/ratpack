table handling
convertModelToSQLString: aRPModelClass

	| SQLSubString first |
	SQLSubString := ''.
	first := true.
	aRPModelClass dataTypes associationsDo: [:each |
						(first ) ifFalse: [SQLSubString := SQLSubString , ', ']. 
						first := false.
						SQLSubString := SQLSubString , (self convertAssociationToSQLString: each)].
	^ SQLSubString