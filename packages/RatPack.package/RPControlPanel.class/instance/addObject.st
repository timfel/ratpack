actions
addObject

	| aJsonString labels aRPModelClass |
	labels := self selectedApplication modelClasses keys.
	(labels isEmpty)
		ifTrue: [self notify: 'No models registered.']. 
	aRPModelClass := (self createListOf: labels with: (self selectedApplication modelClasses keys))
						 ifNil: [^ self cancel].
	aJsonString := ((self createTextfieldFor: 'Object as JsonString' translated 
						  withInitialAnswer: (self defaultJsonFor: aRPModelClass))  
						ifEmpty: [^ self cancel]).
	self selectedApplication persistObjectBy: aJsonString from: (Smalltalk classNamed: aRPModelClass).
	self change
	