object handling
addObject: aJSON from: aModelname

	self database addObject: ((self getRegisteredModel: aModelname) createObject: aJSON) at: aModelname