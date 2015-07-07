table handling
convertAssociationToSQLString: anAssociation

	| SQLSubString |
	SQLSubString := (anAssociation key) , ' ', (anAssociation value at: 1).
	^ SQLSubString