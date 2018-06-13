as yet unclassified
initialize 

	super initialize.
	
	indexHandlerCalled := false.
	self settings globalHeaders: RPTestHelper getExampleGlobalHeaders.