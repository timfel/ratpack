initialize-release
initialize

	super initialize.
	self onRequestDo: [:httpRequest | self processRequest: httpRequest].