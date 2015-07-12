accessing
getValueStringFor: anObject of: aRPModelClass
	
	| strings |
	strings := aRPModelClass dataTypes keys 
		collect: [:attribute | ((aRPModelClass dataTypes at: attribute) includesSubString:   'VARCHAR')
			ifTrue: [anObject instVarNamed: attribute]
			ifFalse: ['''', (anObject instVarNamed: attribute), '''']].
	^ strings joinSeparatedBy: ', '




		
 