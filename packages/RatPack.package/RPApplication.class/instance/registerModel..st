model handling
registerModel: aRPModel
	
	(aRPModel isValid) 
		ifFalse: [self notify: 'Invalid Model. Could not register model: ' , aRPModel modelName , '  to App!'. ^self].	

	self models at: (aRPModel modelName asSymbol) 
					ifAbsent: [ 	self models at: (aRPModel modelName asSymbol) put: (aRPModel). 
								self database registerModel: aRPModel.
								self addModelRouteFor: aRPModel modelName. 
								^self].

	self notify:  'Model already exists! ' , aRPModel modelName.

	