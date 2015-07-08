test - REST operations
testDeleteSingleObject
	
	| jsonString1 jsonString2 url result |
	app registerModel: RPTestModel.
	url := '/api/', (RPTestModel name).
	jsonString1 := '{"var1":1, "var2":"Tim Tester"}'.
	jsonString2 := '{"var1":45, "var2":"Carl Cocks"}'.
	RPTestHelper put: url on: app content: jsonString1.
	RPTestHelper put: url on: app content: jsonString2.
	url := '/api/', (RPTestModel name),'/2'.
	RPTestHelper delete: url on: app.
	url := '/api/', (RPTestModel name).
	result := RPTestHelper get: url on: app.
	self assert: '{"data":[{"var1":1,"var2":"Tim Tester"}]}' equals: (result contents contents )