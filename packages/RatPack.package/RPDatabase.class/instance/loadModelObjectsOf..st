object handling
loadModelObjectsOf: anRPModelClass

	^ (self loadModelObjectHelperFrom: anRPModelClass) asOrderedCollection
