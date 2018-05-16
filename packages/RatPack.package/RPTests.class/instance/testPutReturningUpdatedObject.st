test - REST operations
testPutReturningUpdatedObject
	
	| url urlId putResult getResult |
	app registerModel: RPTestModel.
	url := app class apiRoutePrefix, (RPTestModel name).
	
	urlId := url, '/1'.
	RPTestHelper post: url on: app content: RPTestHelper getExampleJson.
	putResult := RPTestHelper put: urlId on: app content: RPTestHelper getOtherExampleJson.
	getResult := (RPTestHelper get: (urlId) on: app).
	self assert: ((getResult contents contents) = (putResult contents contents)).
	