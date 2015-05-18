registering models
registerModel: aString on: aClass with: aDictionary
	| model |
	model := (RPModel new: aString on: aClass with: aDictionary).
	(model isValid) 
		ifTrue: [ 
			self models at: (model modelName asSymbol) put: (model)]
		ifFalse: [
			Transcript cr ; show: 'Invalid Model. Could not register model at App!!'].