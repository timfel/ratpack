object conversion
reconstructObject: aDictionary

	| newObject |
	newObject := self refClass new.

	self dataTypes keys do: [:each | 
		newObject instVarNamed: each asSymbol put: 
				(aDictionary at: each asSymbol )].
	^ newObject