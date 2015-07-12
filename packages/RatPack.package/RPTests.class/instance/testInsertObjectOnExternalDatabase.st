test - database - postgresql
testInsertObjectOnExternalDatabase

	app database: RPPostgreSQLAdapter new.
	app database createTableFor: RPTestModel.
	app persistObjectBy: '{}' from: RPTestModel.
	self assert: false.