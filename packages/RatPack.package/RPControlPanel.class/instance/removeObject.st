actions
removeObject

	| aModelName id |
	aModelName := ((UIManager default
					request: 'Modelname' translated
					initialAnswer: 'test' translated) ifEmpty: [^ self]).
	id := ((UIManager default
					request: 'ObjectID' translated
					initialAnswer: '1' translated) ifEmpty: [^ self]).
	self selectedApplication removeObject: id from: aModelName asSymbol.
	self change.
	