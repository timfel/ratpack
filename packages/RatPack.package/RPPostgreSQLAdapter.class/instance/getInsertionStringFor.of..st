sql helpers
getInsertionStringFor: anObject of: anRPModelClass
	
	| valueString columnString|
	valueString := self getValueStringFor: anObject of: anRPModelClass.
	columnString := self getColumnNames: anRPModelClass.
	
	^ 'INSERT INTO ', (anRPModelClass tableName), ' (',  columnString , ') VALUES (', valueString, ') RETURNING ID'
	