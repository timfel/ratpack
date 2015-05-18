registering models
registerModel: aRPModel
	(aRPModel isValid) ifTrue: [ 
		self models at: (aRPModel modelName asSymbol) put: (aRPModel)]
	