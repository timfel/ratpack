table handling
convertAssociationToSQLString: anAssociation

	^ (anAssociation key) , ' ', (anAssociation value)