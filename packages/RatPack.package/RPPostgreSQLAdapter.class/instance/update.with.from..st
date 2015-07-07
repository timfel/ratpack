object handling
update: anObject with: anId from: aRPModelClass

	| first valueString |
	valueString := ''.
	first := true.
	aRPModelClass dataTypes keys do:[:each | 
		(first)ifFalse:[ 
			valueString := valueString,  ', '].
		first := false.
		valueString := valueString , (each) , ' = '.
		((((aRPModelClass dataTypes at: each) value at: 1) subStrings: 'VARCHAR') == 0)
			ifTrue: [valueString := valueString,  (anObject instVarNamed: each)]
			ifFalse:[valueString := valueString,  '''',(anObject instVarNamed: each), '''']].
	self connection startup;
		execute: ('UPDATE ', (aRPModelClass tableName), ' SET ',  valueString, ' WHERE var1 = ', anId);
		terminate