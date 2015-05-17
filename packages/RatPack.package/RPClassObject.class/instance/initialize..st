initialize
initialize: aString

	super initialize.
	self broken: false.
	self header: (self parseAttributeString: aString).