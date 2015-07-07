object handling
persist: anObject from: aRPModelClass

	| first columnString valueString |
	columnString := ''.
	valueString := ''.
	first := true.
	aRPModelClass dataTypes keys do:[:each | 
		(first)ifFalse:[ 
			columnString := columnString , ', '.
			valueString := valueString,  ', '].
		first := false.
		columnString := columnString , (each).
		((((aRPModelClass dataTypes at: each) value at: 1) subStrings: 'VARCHAR') == 0)
			ifTrue: [valueString := valueString,  (anObject instVarNamed: each)]
			ifFalse:[valueString := valueString,  '''',(anObject instVarNamed: each), '''']].
	self connection startup;
		execute: ('INSERT INTO ', (aRPModelClass tableName), ' (',  columnString , ') VALUES (' , valueString, ')');
		terminate