object handling
loadModelObjectsOf: aRPModelClass

	| dictionaries objects |	
	dictionaries := self modelDictionary at: (aRPModelClass name)
				ifAbsent: [self notify:  aRPModelClass name, ' not found!'].
	objects := OrderedCollection new.
	dictionaries do:[:each | 
			objects add: (aRPModelClass constructModel: each)].
	^ objects
