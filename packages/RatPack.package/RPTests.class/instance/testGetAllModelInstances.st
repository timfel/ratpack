test - REST operations
testGetAllModelInstances

	| url result testJson testJson2 |
	app registerModel: RPTestModel.
	url := app class apiRoutePrefix, (RPTestModel name).
	testJson := RPTestHelper getExampleJson.
	testJson2 := RPTestHelper getOtherExampleJson.
	RPTestHelper post: url on: app content: testJson.
	RPTestHelper post: url on: app content: testJson2.
	result := RPTestHelper get: url on: app.
	self assert: ((result contents contents) includesSubString: (testJson)).
	self assert: ((result contents contents) includesSubString: (testJson2))