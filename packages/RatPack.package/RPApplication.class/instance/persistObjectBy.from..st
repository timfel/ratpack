object handling
persistObjectBy: aJson from: aRPModelClass

	self database persist:  (aRPModelClass createObject: aJson) from: aRPModelClass