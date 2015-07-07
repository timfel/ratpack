test - REST operations - old
testPutObjectOnApplication
	
	| jsonstring url |
	app registerModel: RPTestModel.
	url := '/api/', (RPTestModel name).
	jsonstring := '{"var1":3, "var2":"Bartholomeus"}'.
	RPTestHelper put: url on: app content: jsonstring.