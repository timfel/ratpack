test - REST operations
testUpdateSingleObject
	
	| idUrl objectToUpdate updatedObject |
     	app registerModel: RPTestModel.
	idUrl := '/api/', (RPTestModel name), '/1'.
	RPTestHelper persist: (RPTestHelper createTestObjects: 1) on: app.

	objectToUpdate := RPTestHelper load: 1 on: app.
	objectToUpdate name: 'Updated Ulf'.
	self assert: objectToUpdate notNil.

	RPTestHelper put: idUrl on: app content: (RPTestModel createJsonFor: objectToUpdate).
	updatedObject := RPTestHelper load: 1 on: app.
	self assert: updatedObject notNil.
	self assert: (RPTestModel createJsonFor: updatedObject) equals: (RPTestModel createJsonFor: objectToUpdate).