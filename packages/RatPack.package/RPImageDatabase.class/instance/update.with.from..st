object handling
update: anObject with: anId from: anRPModelClass
	
	self writeObject: anObject from: anRPModelClass withId: (anId asNumber)
	

	
	