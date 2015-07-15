object conversion
createAttributeDictionaryFor: aObject

	| dictionary |
	(self validateObject: aObject)ifFalse:[self notify: 'No valid object for creating a attribute dictionary for this model!'].
	dictionary := Dictionary new.
	self dataTypes keys do: [:each |
			dictionary at: each put: (aObject instVarNamed: each value)].
	^ dictionary 
	