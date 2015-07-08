test - REST operations
testGetModelInstance
 
        | jsonString url result otherURL |
        app registerModel: RPTestModel.
        url := '/api/', (RPTestModel name).
        jsonString := '{"var1":1,"var2":"Tim Tester"}'.
        RPTestHelper put: url on: app content: jsonString.
        otherURL := '/api/', (RPTestModel name) ,'/1'.
        result := RPTestHelper get: otherURL on: app.
        self assert: jsonString equals: (result contents contents).