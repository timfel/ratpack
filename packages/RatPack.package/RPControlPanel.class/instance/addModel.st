actions
addModel

	|aString aClass anArray|

	aString := ((UIManager default
					request: 'Model' translated 
					initialAnswer: 'test' asString ) ifEmpty: [^ self]).
	aClass := ((UIManager default
					request: 'Class' translated 
					initialAnswer: RPTest asString ) ifEmpty: [^ self]).
	anArray := ((UIManager default
					request: 'Values' translated 
					initialAnswer: 'test', ' variable') ifEmpty: [^ self]).
	self selectedApplication registerModel: aString on:  (Smalltalk classNamed: aClass) with: (anArray findTokens: ' ' asArray).
	self change