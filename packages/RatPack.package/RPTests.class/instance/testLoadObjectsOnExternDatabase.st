test - database - postgresql
testLoadObjectsOnExternDatabase

	| objects |
	app database: RPPostgreSQLAdapter new.
	objects := app database loadObjects: RPTestModel