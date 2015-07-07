object conversion
createObject: aJson

	| newObject aJsonObject |
	(self validateJson: aJson) 
		ifFalse: [self notify: 'Invalide Json! Could not create Object on ' , self modelName].
	
	aJsonObject := Json readFrom: ( ReadStream on:  aJson asOrderedCollection  from: 1 to: (aJson asOrderedCollection size)).	
	newObject := self refClass new.

	self dataTypes keys do: [:each | 
		newObject instVarNamed: each put: 
				(aJsonObject at: each ifAbsent: [
											(self dataTypes at: each) at: 2 ])].
	^ newObject