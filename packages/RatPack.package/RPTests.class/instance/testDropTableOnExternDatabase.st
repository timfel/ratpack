test - database - postgresql
testDropTableOnExternDatabase
	"Simple test to check if u can delete a table on your database." 
	
	app database: RPPostgreSQLAdapter new.
	app database dropTableFor: RPTestModel 