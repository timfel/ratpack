test - objects - old
testAddObject
	
	| object |
	object := RPTestModel createObject: '{"var1":20, "var2":"Tim Tester"}'.
	app registerModel: RPTestModel.
	app database persist: object from: RPTestModel.
	self assert: '{"var1":20,"var2":"Tim Tester"}' 
		equals: (RPTestModel createJsonFor: ((app database loadObjects: RPTestModel) first)).