sql helpers
getSQLValueOf: anObject ofModel: aRPModelClass from: attribute 

	" escape string characters if needed"
	((aRPModelClass dataTypes at: attribute) includesSubString:   'VARCHAR')
			ifFalse: [^ anObject instVarNamed: attribute]
		 	ifTrue: [^ '''', (anObject instVarNamed: attribute), '''']