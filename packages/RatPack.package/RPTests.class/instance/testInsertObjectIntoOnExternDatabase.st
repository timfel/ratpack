test - database - postgresql
testInsertObjectIntoOnExternDatabase

	app database: RPPostgreSQLAdapter new.
	app database createTableFor: RPTestModel.
	app persistObjectBy: '{}' from: RPTestModel