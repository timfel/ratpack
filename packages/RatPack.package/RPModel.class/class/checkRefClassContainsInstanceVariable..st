validation
checkRefClassContainsInstanceVariable: aString
	
	self refClass instVarIndexFor: aString asString 
			ifAbsent: [^false ]. 
	^true