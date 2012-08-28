actions
setPort

	self selectedApplication
		portNumber: ((UIManager default
						request: self class portString
						initialAnswer: self selectedApplication portNumber asString)
							ifEmpty: [^ self]) asInteger.
	self change.