test - REST operations
testGetModelInstance
 
	 "
        app registerModel: RPTestModel.
        url := '/api/', (RPTestModel name).
        RPTestHelper put: url on: app content: jsonString.
        otherURL := '/api/', (RPTestModel name) ,'/1'.
        result := RPTestHelper get: otherURL on: app.
        self assert: jsonString equals: (result contents contents).

        otherURL := '/api/', (RPTestModel name) ,'/2'.
        result := RPTestHelper get: otherURL on: app.
        self assert: '{}' equals: (result contents contents).
	" 
	self assert: false