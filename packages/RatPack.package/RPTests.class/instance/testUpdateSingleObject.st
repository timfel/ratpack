test - REST operations
testUpdateSingleObject

      |  |
	"
     	app registerModel: RPTestModel.
	url := '/api/', (RPTestModel name).
	     updateUrl  := '/api/',  (RPTestModel name) , '/1'.
	RPTestHelper put: updateUrl on: app content: jsonstring.
 	"
	self assert: false 