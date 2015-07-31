object conversion
createAttributeDictionaryFor: anObject

	| dictionary |
	(self validateObject: anObject) ifFalse: [self notify: 'No valid object for creating an attribute dictionary for this model!'].
	dictionary := Dictionary new.
	self dataTypes keysDo: [:key |
			dictionary at: key put: (anObject instVarNamed: key)].
	^ dictionary
	