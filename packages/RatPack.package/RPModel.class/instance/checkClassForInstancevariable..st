initialize
checkClassForInstancevariable: aString

	[self refClass 
			instVarIndexFor: aString asString 
			ifAbsent: [self error: 'Instance variable not found']. ^true] 
	on: Error do: [^false]

	
	