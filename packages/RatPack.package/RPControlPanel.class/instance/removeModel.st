actions
removeModel

	| aModelName |
	aModelName := ((UIManager default
					request: 'Removing Model' translated
					initialAnswer: 'RPTestModel' translated) ifEmpty: [^ self]).
	self selectedApplication removeModel: (Smalltalk classNamed: aModelName).
	self change.
	