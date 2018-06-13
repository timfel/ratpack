test - REST operations
testPost
	
	| url testJson |
	app registerModel: RPTestModel.
	url := app class apiRoutePrefix, (RPTestModel name).
	testJson := RPTestHelper getExampleJson.
	RPTestHelper post: url on: app content: testJson.
	self assert: (RPTestModel createJsonFor: 
					(app database loadModelObject: 1 from: RPTestModel) object) 
					equals: testJson.
	
	