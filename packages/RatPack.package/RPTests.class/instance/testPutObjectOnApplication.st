test - REST operations
testPutObjectOnApplication
	
	"
	app registerModel: RPTestModel.
	url := '/api/', (RPTestModel name).
	RPTestHelper put: url on: app content: jsonstring.
	" 
	self assert: false