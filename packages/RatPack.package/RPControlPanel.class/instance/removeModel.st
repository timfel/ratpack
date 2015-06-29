actions
removeModel

	| aModelName |
	aModelName := ((UIManager default
					request: 'Removing Model' translated
					initialAnswer: 'aModelName' translated) ifEmpty: [^ self]).
	self selectedApplication removeModel: aModelName asSymbol.
	self change.
	