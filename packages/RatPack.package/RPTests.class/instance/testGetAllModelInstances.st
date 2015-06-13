test - routing
testGetAllModelInstances

	| modelName jsonstring url result |
	modelName := 'testmodel'.
	app registerModel: modelName on: RPTest with: #( 'test' 'variable').
	url := '/api/testmodel'.
	jsonstring := '{"test":"foo", "variable":"bar"}'.
	RPTestHelper put: url on: app content: jsonstring.

	result := RPTestHelper get: url on: app.
	

	