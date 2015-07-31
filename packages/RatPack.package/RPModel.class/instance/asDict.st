converting
asDict

	| jsonDict |
	jsonDict := Dictionary new.
	jsonDict at: #object put: ((self class) createAttributeDictionaryFor: (self object)).
	jsonDict at: #metadata put: self metadata.
	^ jsonDict