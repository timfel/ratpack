actions
toggleRunning

	self selectedApplication isRunning
		ifTrue: [self selectedApplication stop]
		ifFalse: [self selectedApplication start].
	self change.