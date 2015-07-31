object conversion
createObject: aJson

	| aJsonObject |
	(self validateJson: aJson) 
		ifFalse: [self notify: 'Invalid Json! Could not create Object on ' , self name].
	
	aJsonObject := Json readFrom: (ReadStream on: aJson from: 1 to: (aJson size)).	
	^ self initializeObjectFrom: aJsonObject