object handling
getNextIdForModel: aRPModelClass

	| modelName id |
	modelName := aRPModelClass name.
	id := self idDictionary at: modelName.
	self idDictionary at: modelName put: id + 1.
	^ id