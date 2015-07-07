helper functions
createTable: aModel on: app

	app database: RPPostgreSQLAdapter new.
	app database createTableFor: aModel