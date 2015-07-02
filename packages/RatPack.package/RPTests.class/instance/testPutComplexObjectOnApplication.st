test - REST operations
testPutComplexObjectOnApplication
	| modelName jsonObject jsonstring url objects result |
	result := false.
	modelName := 'testmodel'.
	app registerModel: modelName on: RPTest with: #( 'test' 'variable').
	url := '/api/testmodel'.
	jsonstring := '{"test":"foo","variable":{"name":"foo2","value": 10}}'.
	RPTestHelper put: url on: app content: jsonstring.
	jsonObject := RPTestHelper createJsonObjectFrom: '{"name":"foo2", "value": 10}'.
	objects :=  app database modelDictionary at: modelName asSymbol.
	objects do: [ :each | 
						((RPTestHelper check: each value at: 'test' for: 'foo') & 
						(RPTestHelper check: each value at: 'variable' for: jsonObject)) 
						ifTrue: [ result := true]].
	self assert: ( result)