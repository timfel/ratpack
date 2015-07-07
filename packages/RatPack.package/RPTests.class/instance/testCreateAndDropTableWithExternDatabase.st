test - database - postgresql
testCreateAndDropTableWithExternDatabase
	"INVALID TEST" 
	
	app database: RPPostgreSQLAdapter new.
	app database createTableFor: RPTestModel.
	app database dropTableFor: RPTestModel 