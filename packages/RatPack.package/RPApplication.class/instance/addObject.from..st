object handling
addObject: aJsonObject from: aModelname

	self database addObject: ((self getRegisteredModel: aModelname) createObject: aJsonObject) at: aModelname