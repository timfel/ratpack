test - database
testDropTable
	"INVALID TEST" 

	app registerModel: 'test' on: RPTest with: #( 'test' ).
	app database: RPPostgreSQLAdapter new.
	app database createTableFor: (app getRegisteredModel: 'test').
	app database dropTable: (app getRegisteredModel: 'test')