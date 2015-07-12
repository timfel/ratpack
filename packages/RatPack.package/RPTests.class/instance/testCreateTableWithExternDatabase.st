test - database - postgresql
testCreateTableWithExternDatabase
	"Simple test to check if you can create a table on your database." 
	
	app database: RPPostgreSQLAdapter new.
	app database createTableFor: RPTestModel
	