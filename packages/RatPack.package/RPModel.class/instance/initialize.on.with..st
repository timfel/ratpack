initialize
initialize: aString on: aClass with: anArray

	super initialize.
	self modelName: aString.
	self refClass: aClass.
	self attributes: anArray