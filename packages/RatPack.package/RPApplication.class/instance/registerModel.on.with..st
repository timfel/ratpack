registering models
registerModel: aString on: aClass with: aDictionary
	| model |
	model := (RPModel new: aString on: aClass with: aDictionary).
	(model isValid) 
		ifTrue: [ 
			[self models at: (model modelName asSymbol). self notify: ('Model: ' ,  model modelName , 'already exists. Remove it first.' ) ]
				on: KeyNotFound do:[ 
				self models at: (model modelName asSymbol) put: (model)]]
		ifFalse: [
			self notify: 'Invalid Model. Could not register model: ' , aString , '  to App!'].