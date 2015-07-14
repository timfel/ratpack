test - database - postgresql
testLoadObjectsOnExternalDatabase

	| newObjects |
	app database: RPPostgreSQLAdapter new.
	app registerModel: RPTestModel. 
	newObjects := RPTestHelper createTestObjects: 3.
	RPTestHelper insertObjects: newObjects of: RPTestModel into: app database.
  
	app database: RPPostgreSQLAdapter new.
	self assert: ((app database loadModelObjectsOf: RPTestModel) size) equals: 3.
	