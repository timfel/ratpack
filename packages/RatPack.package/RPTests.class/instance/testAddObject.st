test - objects
testAddObject
	
	| object |
	object := RPTestModel createObject: RPTestHelper getExampleObject.
	app registerModel: RPTestModel.
	app database persist: object from: RPTestModel.
	self assert: RPTestHelper getExampleObject equals: 
		(RPTestModel createJsonFor: ((app database loadObjects: RPTestModel) first)).