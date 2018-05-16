test - REST operations
testPostReturningNewObject
	
	| url urlId testJson postResult getResult |
	app registerModel: RPTestModel.
	url := app class apiRoutePrefix, (RPTestModel name).
	testJson := RPTestHelper getExampleJson.
	urlId := url, '/1'.
	postResult := RPTestHelper post: url on: app content: testJson.
	getResult := (RPTestHelper get: (urlId) on: app).
	self assert: ((getResult contents contents) = (postResult contents contents)).
	