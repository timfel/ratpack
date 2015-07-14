actions
addModel

	| aClass anArray labels model |

	labels := RPModel withAllSubclasses collect: [:each | each name].
	model := (UIManager default
				chooseFrom: labels
				values: RPModel withAllSubclasses
				lines: #()
				title: 'Choose Model') ifNil: [^ self].

	"aString := ((UIManager default
					request: 'Model' translated 
					initialAnswer: 'test' asString ) ifEmpty: [^ self]).
	aClass := ((UIManager default
					request: 'Class' translated 
					initialAnswer: RPTest asString ) ifEmpty: [^ self]).
	anArray := ((UIManager default
					request: 'Values' translated 
					initialAnswer: 'test', ' variable') ifEmpty: [^ self])."
	self selectedApplication registerModel: model "on:  (Smalltalk classNamed: aClass) with: (anArray findTokens: ' ' asArray)".
	self change