actions
toggleLogging

	self selectedApplication loggingIsEnabled 
		ifTrue: [self selectedApplication disableLogging ]
		ifFalse: [self selectedApplication enableLogging ].
	self change.
