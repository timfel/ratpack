test - database - postgresql
testUpdateObjectOnExternDatabase

	app database: RPPostgreSQLAdapter new.
	app database update: (RPTestModel createObject: RPTestHelper getExampleObject) with: 1 from: RPTestModel