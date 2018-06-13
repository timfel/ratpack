helper functions
check: anObject at: anInstanceName for: aValue

	[((anObject instVarNamed: anInstanceName) = (aValue))
		ifTrue: [^true]
		ifFalse: [^false] ] 
			on: Error 
			do: [^false]
	