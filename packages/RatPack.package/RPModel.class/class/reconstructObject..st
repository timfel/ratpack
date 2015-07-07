object conversion
reconstructObject: aDictionary

	| newObject |
	newObject := self refClass new.

	aDictionary keys do: [:each | 
		newObject instVarNamed: each put: 
				(aDictionary at: each )].
	^ newObject