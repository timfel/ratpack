test - REST operations
testDeleteSingleObject
	
	"
app registerModel: RPTestModel.
	url := '/api/', (RPTestModel name).
	RPTestHelper put: url on: app content: jsonString1.
	RPTestHelper put: url on: app content: jsonString2.
	url := '/api/', (RPTestModel name),'/2'.
	RPTestHelper delete: url on: app.
	url := '/api/', (RPTestModel name).
	result := RPTestHelper get: url on: app.
	"
	self assert: false