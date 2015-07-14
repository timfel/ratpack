actions
addObject

	| aJsonString labels aRPModelClassName anRPModelClass |
	labels := self selectedApplication modelClasses keys.
	(labels isEmpty)
		ifTrue: [self notify: 'No models registered.']. 
	aRPModelClassName := (self createListOf: labels with: (self selectedApplication modelClasses keys))
						 ifNil: [^ self cancel].
	anRPModelClass := self selectedApplication getRegisteredModel: aRPModelClassName.
	aJsonString := ((self createTextfieldFor: 'Object as JsonString' translated 
						  withInitialAnswer: (anRPModelClass defaultJson))  
						ifEmpty: [^ self cancel]).
	self selectedApplication persistObjectBy: aJsonString 
		from: anRPModelClass.
	self change
	