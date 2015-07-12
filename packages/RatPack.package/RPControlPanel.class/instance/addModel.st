actions
addModel

	| aModel aClass anArray |

	aModel := ((UIManager default
					request: 'Model' translated 
					initialAnswer: 'RPTestModel') ifEmpty: [^ self]).
	"aClass := ((UIManager default
					request: 'Class' translated 
					initialAnswer: 'RPTestClass') ifEmpty: [^ self]).
	anArray := ((UIManager default
					request: 'Values' translated 
					initialAnswer: 'test', ' variable') ifEmpty: [^ self])."
	self selectedApplication registerModel: (Smalltalk classNamed: aModel). "on:  (Smalltalk classNamed: aModel) with: (anArray findTokens: ' ' asArray)."
	self change