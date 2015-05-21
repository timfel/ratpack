initialize
checkClassForInstancevariable: aString

	(aString = 'ObjectId') ifTrue:
		[self error: 'ObjectId is a model variable. Forbidden as attribute name.'].
	
	self refClass 
			instVarIndexFor: aString asString 
			ifAbsent: [^false ]. 
	^true

	
	