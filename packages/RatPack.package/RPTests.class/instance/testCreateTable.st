test - database
testCreateTable
	"INVALIDE TEST" 

	app registerModel: 'test' on: RPTest with: #( 'test' ).
	app database: RPPostgreSQLAdapter new.
	app database createTableFor: (app getRegisteredModel: 'test')