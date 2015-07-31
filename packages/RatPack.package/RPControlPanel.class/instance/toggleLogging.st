actions
toggleLogging

	self selectedApplication logWindow loggingIsEnabled 
		ifTrue: [self selectedApplication disableLogging ]
		ifFalse: [self selectedApplication enableLogging ].
	self change.
