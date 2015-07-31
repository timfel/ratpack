sql helpers
convertAssociationToSQLString: anAssociation

	^ (anAssociation key) , ' ', (anAssociation value)