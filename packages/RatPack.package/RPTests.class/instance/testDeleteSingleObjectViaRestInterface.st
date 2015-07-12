test - REST operations
testDeleteSingleObjectViaRestInterface
	
	| url idUrl result |
	app database: RPPostgreSQLAdapter new.
	app registerModel: RPTestModel.
	url := '/api/', (RPTestModel name).
	RPTestHelper put: url on: app content: RPTestHelper getExampleJson.
	self assert: (app database loadObject: 1 from: RPTestModel) notNil.
  
	idUrl := url, '/1'.
	RPTestHelper delete: idUrl on: app.
	result := RPTestHelper get: url on: app.
	self assert: ([app database loadObject: 1 from: RPTestModel. false] 
								on: Warning do: [true]).