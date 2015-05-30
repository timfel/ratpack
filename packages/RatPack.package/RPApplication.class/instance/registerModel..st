registering models
registerModel: aRPModel
	
	(aRPModel isValid) 
		ifTrue: [ 
			[self models at: (aRPModel modelName asSymbol). self notify: ('Model: ' ,  aRPModel modelName , 'already exists. Remove it first.' ) ]
				on: KeyNotFound do:[ 
				self models at: (aRPModel modelName asSymbol) put: (aRPModel)]]
		ifFalse: [
			self notify: 'Invalid Model. Could not register model: ' , aRPModel modelName , '  to App!'].
	