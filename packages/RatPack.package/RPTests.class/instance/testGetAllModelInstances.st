test - REST operations
testGetAllModelInstances

	"app registerModel: RPTestModel.
	url := '/api/', (RPTestModel name).
	RPTestHelper put: url on: app content: jsonString1.
	RPTestHelper put: url on: app content: jsonString2.
	result := RPTestHelper get: url on: app.
	"
	self assert: false 
	