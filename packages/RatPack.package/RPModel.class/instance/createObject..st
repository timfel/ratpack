object accessing
createObject: aJsonObject
	| newObject |
	(self checkJson: aJsonObject) ifFalse: [self notify: 'Invalide JsonObject! Could not create Object on ' , self modelName].
	newObject := self refClass newWith: aJsonObject.
	newObject setDefaults: self defaultValues.
	^newObject