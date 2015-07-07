object handling
addObject: aJson from: aRPModelClass

	self database addObject:  (aRPModelClass createObject: aJson)