actions
setPort

	self selectedApplication
		portNumber: ((self createTextfieldFor: (self class portString) 
						     withInitialAnswer: (self selectedApplication portNumber asString))
							ifEmpty: [^ self cancel]) asInteger.
	self change