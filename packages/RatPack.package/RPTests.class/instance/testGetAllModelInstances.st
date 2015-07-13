test - REST operations
testGetAllModelInstances

	| url result testJson |
	app registerModel: RPTestModel.
	url := '/api/', (RPTestModel name).
	testJson := RPTestHelper getExampleJson.
	RPTestHelper put: url on: app content: testJson.
	RPTestHelper put: url on: app content: testJson.
	result := RPTestHelper get: url on: app.
	self assert: ((result contents contents) includesSubString: (testJson, ',', testJson)).
	