actions
removeApplication

	RPApplication removeService: self selectedApplication
										stop;
										yourself.
	self change.