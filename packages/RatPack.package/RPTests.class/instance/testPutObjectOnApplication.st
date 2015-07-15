test - REST operations
testPutObjectOnApplication
	
	| url testJson |
	app registerModel: RPTestModel.
	url := '/api/', (RPTestModel name).
	testJson := RPTestHelper getExampleJson.
	RPTestHelper put: url on: app content: RPTestHelper getExampleJson.
	self assert: (RPTestModel createJsonFor: 
					(app database loadModelObject: 1 from: RPTestModel) object) 
					equals: testJson.
	
	