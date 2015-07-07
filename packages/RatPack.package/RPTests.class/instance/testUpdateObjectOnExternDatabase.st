test - database - postgresql
testUpdateObjectOnExternDatabase

	app database: RPPostgreSQLAdapter new.
	app database update: (RPTestModel createObject: '{"var2":"Adreas Anders", "var1":2}') with: 1 from: RPTestModel