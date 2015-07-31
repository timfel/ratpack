object handling
loadModelObjectsOf: anRPModelClass

	^ (self getAllReconstructedObjects: anRPModelClass) asOrderedCollection
