test - REST operations - old
testGetAllModelInstances

	| jsonString url result |
	app registerModel: RPTestModel.
	url := '/api/rptestmodel'.
	jsonString := '{"var1":1, "var2":"Tim Tester"}'.
	RPTestHelper put: url on: app content: jsonString.

	result := RPTestHelper get: url on: app.
	self assert: jsonString equals: (result contents contents )
	