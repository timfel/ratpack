routes
indexHandlerCalled 

	indexHandlerCalled
		ifTrue: [ indexHandlerCalled := false. ^ true. ]
		ifFalse: [ ^ false ].