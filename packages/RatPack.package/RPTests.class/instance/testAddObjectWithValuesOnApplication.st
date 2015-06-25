test - objects
testAddObjectWithValuesOnApplication
	| modelName jsonstring objects result |
	result := false.
	modelName := 'testmodel'.
	app registerModel: modelName on: RPTest with: #( 'test' 'variable').
	
	jsonstring := '{"test":"foo", "variable":"bar"},'.
	app addObjectViaString: jsonstring from: modelName. 
	
	objects :=  app database modelDictionary at: modelName asSymbol.
	objects do: [ :each | 
						((RPTestHelper check: each value at: 'test' for: 'foo') & 
						(RPTestHelper check: each value at: 'variable' for: 'bar')) 
						ifTrue: [ result := true]].
	self assert: ( result)