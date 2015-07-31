test - REST operations
testDeleteSingleObjectViaRestInterface
	
	| url idUrl result |
	app database: RPPostgreSQLAdapter new.
	app registerModel: RPTestModel.
	url := app class apiRoutePrefix, (RPTestModel name).
	RPTestHelper post: url on: app content: RPTestHelper getExampleJson.
	self assert: (app database loadModelObject: 1 from: RPTestModel) notNil.
  
	idUrl := url, '/1'.
	RPTestHelper delete: idUrl on: app.
	result := RPTestHelper get: url on: app.
	self assert: ([app database loadModelObject: 1 from: RPTestModel. false] 
								on: Warning do: [true]).