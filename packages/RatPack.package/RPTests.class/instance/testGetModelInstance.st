test - REST operations - old
testGetModelInstance
 
        | modelName jsonString url result otherURL |
        modelName := 'testmodel'.
        app registerModel: modelName on: RPTest with: #( 'test' 'variable').
        url := '/api/testmodel'.
        jsonString := '{"test":"foo","variable":"bar"}'.
        RPTestHelper put: url on: app content: jsonString.
 
        otherURL := '/api/testmodel/1'.
        result := RPTestHelper get: otherURL on: app.
        self assert: result contents contents = jsonString.