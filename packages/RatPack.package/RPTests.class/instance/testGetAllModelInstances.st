test - REST operations
testGetAllModelInstances

	| url result testJson testJson2 |
	app registerModel: RPTestModel.
	url := '/api/', (RPTestModel name).
	testJson := RPTestHelper getExampleJson.
	testJson2 := RPTestHelper getOtherExampleJson.
	RPTestHelper put: url on: app content: testJson.
	RPTestHelper put: url on: app content: testJson2.
	result := RPTestHelper get: url on: app.
	self assert: ((result contents contents) includesSubString: (testJson)).
	self assert: ((result contents contents) includesSubString: (testJson2))