test - database - postgresql
testInsertObjectOnExternalDatabase

	app database: RPPostgreSQLAdapter new.
	app registerModel: RPTestModel.
	RPTestHelper persistNew: 1 on: app. 
	self assert: (app database loadObjectsOf: RPTestModel) size equals: 1.
	self assert: (RPTestModel createJsonFor: (RPTestHelper load: 1 on: app)) equals: RPTestHelper getExampleJson. . 