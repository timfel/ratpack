object accessing
createObject: aJSON
	| newObject |
	(self checkJSON: aJSON) ifFalse: [self notify: 'Invalide Json! Could not create Object on ' , self modelName].
	newObject := self refClass newWith: aJSON.
	newObject setDefaults: self defaultValues.
	^newObject