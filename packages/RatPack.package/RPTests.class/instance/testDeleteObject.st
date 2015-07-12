test - objects
testDeleteObject

	| object1 object2 object3 |
	object1 := RPTestModel createObject: RPTestHelper getExampleObject.
	object2 := RPTestModel createObject: '{"salary":21, "name":"Hanz Maulwurf"}'.
	object3 := RPTestModel createObject: '{}'.
	app registerModel: RPTestModel.
	app database persist: object1 from: RPTestModel.
	app database persist: object2 from: RPTestModel.
	app database persist: object3 from: RPTestModel.
	self assert: 3 
		equals: ((app database loadObjects: RPTestModel) size).
	app database deleteObject: 1 from: RPTestModel.
	app database deleteObject: 2 from: RPTestModel.
	self assert: 1
		equals: ((app database loadObjects: RPTestModel) size)
	