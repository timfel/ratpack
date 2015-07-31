model handling
addModelRouteFor: anRPModelClass

	self addDefaultGetRoutesFor: anRPModelClass.
	self addDefaultDeleteRoutesFor: anRPModelClass.
	self addDefaultPostRoutesFor: anRPModelClass.	
	self addDefaultPutRoutesFor: anRPModelClass
	
