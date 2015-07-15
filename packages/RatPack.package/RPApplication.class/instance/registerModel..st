model handling
registerModel: aRPModelClass
	
	(aRPModelClass validateRefClass) 
		ifFalse: [self notify: 'Invalid ModelClass. Could not register modelclass: ' , aRPModelClass modelName , '  to App!'. ^self].	
	
	self addModelClass: aRPModelClass


	