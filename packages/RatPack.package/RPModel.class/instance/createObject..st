object accessing
createObject: aJSON

	(self checkJSON: aJSON) ifFalse: [self warning: 'Invalide Json! Could not create Object on ' , self modelName].
	^self refClass newWith: aJSON
