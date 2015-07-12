accessing
getSQLValueOf: anObject ofModel: aRPModelClass from: attribute 

	" escape string characters if needed"
	((aRPModelClass dataTypes at: attribute) includesSubString:   'VARCHAR')
			ifTrue: [^ anObject instVarNamed: attribute]
			ifFalse: [^ '''', (anObject instVarNamed: attribute), '''']