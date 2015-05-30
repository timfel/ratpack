registering models
registerModel: aString on: aClass with: aDictionary
	
	self registerModel: (RPModel new: aString on: aClass with: aDictionary)