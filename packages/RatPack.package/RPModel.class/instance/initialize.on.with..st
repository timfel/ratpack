initialize
initialize: aString on: aClass with: aDictionary

	super initialize.
	self modelName: aString.
	self refClass: aClass.
	self attributes: aDictionary