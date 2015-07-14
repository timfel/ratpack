test - objects
testDeleteObject

	| objects testAmount |
	testAmount := 3.
	objects := RPTestHelper createTestObjects: testAmount.
	app registerModel: RPTestModel.

	objects do: [:object | app database persist: object from: RPTestModel].  
	self assert: ((app database loadModelObjectsOf: RPTestModel) size) equals: testAmount.

	(1 to: testAmount) do: [:id | app database deleteObject: id from: RPTestModel].  
	self assert: (app database loadModelObjectsOf: RPTestModel) isEmpty.
	