default handling
setDefaultValues: aDictionary

	self checkDefaultKeys: (aDictionary keys asCollection).
	aDictionary associationsDo: [:element | self setDefaultValue: element ]