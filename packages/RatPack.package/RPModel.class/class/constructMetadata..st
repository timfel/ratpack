metadata handling
constructMetadata: aDictionary

	| dict |
	dict := Dictionary new.
	self metaDataVariables do: [ :key | dict at: key put: (aDictionary at: key)].
	^dict