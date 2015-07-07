test - database - postgresql
testDeleteObjectOnExternDatabase

	app database: RPPostgreSQLAdapter new.
	app database createTableFor: RPTestModel.
	app deleteObject: 'Hans' from: RPTestModel