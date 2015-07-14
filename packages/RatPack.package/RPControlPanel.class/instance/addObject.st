actions
addObject

	| aJsonString labels aRPModelClass |

	labels := self selectedApplication modelClasses keys collect: [:each | each].
	(labels size == 0)
		ifTrue: [self notify: 'Keine Models registriert!']. 
	aRPModelClass := (UIManager default
				chooseFrom: labels
				values: self selectedApplication modelClasses keys
				lines: #()
				title: 'Choose Model') ifNil: [^ self].
"Direkt auf die bekannten default Values zugreifen"
	aJsonString := ((UIManager default
					request: 'Object as JsonString' translated 
					initialAnswer: '{"salary":"1","name":"Max Mustermann" }') ifEmpty: [^ self]).
	self selectedApplication persistObjectBy: aJsonString from: (Smalltalk classNamed: aRPModelClass).
	self change
	