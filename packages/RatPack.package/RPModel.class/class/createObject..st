object conversion
createObject: aJson

	| newObject aJsonObject |
	(self validateJson: aJson) 
		ifFalse: [self notify: 'Invalid Json! Could not create Object on ' , self name].
	
	aJsonObject := Json readFrom: ( ReadStream on:  aJson asOrderedCollection  from: 1 to: (aJson asOrderedCollection size)).	
	newObject := self refClass new.

	self dataTypes keys do: 
		[:key | newObject instVarNamed: key put: (aJsonObject at: key 
												ifAbsent: [self defaultValues at: key])].
	^ newObject