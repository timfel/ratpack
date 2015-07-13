test - database - postgresql
testCreateTableWithExternalDatabase
	"Simple test to check if you can create a table on your database." 
	
	| tableExistsStatement response |
	app database: RPPostgreSQLAdapter new.
	app database createTableFor: RPTestModel.
	tableExistsStatement := '(SELECT 1 FROM pg_class WHERE relname = ''rptestclass'');'.

	response := (app database executeSQLStatement: tableExistsStatement).
	self assert: (response completedResponse value) equals: 'SELECT 1'
.
	