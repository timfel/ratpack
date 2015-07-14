test - database - postgresql
testUpdateObjectOnExternalDatabase

	| objects updatedObject |
	app database: RPPostgreSQLAdapter new.
	app registerModel: RPTestModel.
	objects := RPTestHelper createTestObjects: 3.
	RPTestHelper insertObjects: objects of: RPTestModel into: app database.
 
	updatedObject := objects first.
	updatedObject name: 'Updated Ulf'.
	app database update: updatedObject with: 1 from: RPTestModel.
	self assert: ((app database loadModelObject: 1 from: RPTestModel) object) name equals: 'Updated Ulf'.  