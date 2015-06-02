model handling
registerModel: aString on: aClass with: anArray
	
	self registerModel: (RPModel new: aString on: aClass with: anArray)