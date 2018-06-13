test - objects
testObjectIndexing

	| object |
	object := RPTestHelper createTestObject.
	app registerModel: RPTestModel.
	app database persist: object from: RPTestModel.
	self assert: 2 equals: (app database idDictionary at: (RPTestModel name)) .
	app database persist: object from: RPTestModel.
	self assert: 3 equals:(app database idDictionary at: (RPTestModel name)).