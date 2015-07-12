test - objects
testAddObject
	
	| object |
	app registerModel: RPTestModel.
	object := RPTestModel createObject: RPTestHelper getExampleJson.
	app database persist: object from: RPTestModel.
	self assert: RPTestHelper getExampleJson equals: 
				(RPTestModel createJsonFor: 
					((app database loadObjects: RPTestModel) first)).