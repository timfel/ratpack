test - routing
testPutObjectOnApplication
	| modelName jsonstring url objects result |
	result := false.
	modelName := 'testmodel'.
	app registerModel: modelName on: RPTest with: #( 'test' 'variable').
	url := '/api/testmodel'.
	jsonstring := '{"test":"foo", "variable":"bar"}'.
	RPTestHelper put: url on: app content: jsonstring.
	
	objects :=  app database modelDictionary at: modelName asSymbol.
	objects do: [ :each | 
						((RPTestHelper check: each value at: 'test' for: 'foo') & 
						(RPTestHelper check: each value at: 'variable' for: 'bar')) 
						ifTrue: [ result := true]].
	self assert: ( result)