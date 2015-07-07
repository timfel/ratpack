test - database - postgresql
testInsertObjectOnExternDatabase

	app database: RPPostgreSQLAdapter new.
	app database createTableFor: RPTestModel.
	app persistObjectBy: '{}' from: RPTestModel