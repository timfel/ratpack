test - database - postgresql
testDropTableOnExternalDatabase
	"Simple test to check if u can delete a table on your database." 
	
	| response tableExistentStatement |
	app database: RPPostgreSQLAdapter new.
	app database createTableFor: RPTestModel.
	tableExistentStatement := '(SELECT 1 FROM pg_class WHERE relname = ''rptestclass'');'.

	response := app database executeSQLStatement: tableExistentStatement.
	self assert: (response completedResponse value) equals: 'SELECT 1'.

	app database dropTableFor: RPTestModel .
	response := app database executeSQLStatement: tableExistentStatement.
	self assert: (response completedResponse value) equals: 'SELECT 0'.