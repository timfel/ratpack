test - database - postgresql
testCreateTableWithExternDatabase
	"Simple test to check if u can create a table on your database." 
	
	app database: RPPostgreSQLAdapter new.
	app database createTableFor: RPTestModel
	