actions
addModel

	| aModel |
	aModel := ((UIManager default
					request: 'Model' translated 
					initialAnswer: 'RPTestModel') ifEmpty: [^ self]).
	self selectedApplication registerModel: (Smalltalk classNamed: aModel).
	self change