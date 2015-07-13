test - database - postgresql
testLoadTableFromExternalDatabase

	| response |
	app database: RPPostgreSQLAdapter new.
	app registerModel: RPTestModel.
	response := app database loadTable: RPTestModel .
	self assert: false.