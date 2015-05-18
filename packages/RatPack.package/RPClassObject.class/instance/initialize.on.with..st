initialize
initialize: aString on: aClass with: aDictionary

	super initialize.
	self broken: false.
	self header: (self parseAttributeString: aString)