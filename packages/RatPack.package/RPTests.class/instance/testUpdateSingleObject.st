test - REST operations
testUpdateSingleObject

        | modelName jsonString urlToTestmodel insertedObject urlToFirstInsertedObject updatedJsonString |
        modelName := 'testmodel'.
        app registerModel: modelName on: RPTest with: #( 'test' 'variable').
 
        urlToTestmodel := '/api/testmodel'.
        
	  jsonString := '{"test":"foo","variable":"bar"}'.
        RPTestHelper put: urlToTestmodel on: app content: jsonString.
 
 	  updatedJsonString := '{"test":"another","variable":"value"}'.
        urlToFirstInsertedObject  := '/api/testmodel/1'.
	  RPTestHelper put: urlToFirstInsertedObject  on: app content: updatedJsonString.
   
        insertedObject := RPTestHelper get: urlToFirstInsertedObject  on: app.
	Transcript show: insertedObject contents contents.
        self assert: insertedObject contents contents = updatedJsonString.