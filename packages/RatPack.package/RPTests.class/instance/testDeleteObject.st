test - REST operations
testDeleteObject
 
      | modelName jsonString url result urlToInsertedElement |
      modelName := 'testmodel'.
      app registerModel: modelName on: RPTest with: #( 'test' 'variable').
      url := '/api/testmodel'.
        
	jsonString := '{"test":"foo","variable":"bar"}'.
      RPTestHelper put: url on: app content: jsonString.
 
      urlToInsertedElement := '/api/testmodel/1'.
	RPTestHelper delete: urlToInsertedElement on: app.

     	result := RPTestHelper get: urlToInsertedElement on: app.
