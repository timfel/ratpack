model handling
addModelClass: aRPModelClass

	self modelClasses at: (aRPModelClass name asSymbol ) put: aRPModelClass.
	self notify:  'Model already exists! ' , aRPModelClass modelName.