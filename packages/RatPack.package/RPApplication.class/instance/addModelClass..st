model handling
addModelClass: aRPModelClass

	self database createTableFor: aRPModelClass.
	self addModelRouteFor: aRPModelClass.
	self modelClasses at: (aRPModelClass name) put: aRPModelClass.
