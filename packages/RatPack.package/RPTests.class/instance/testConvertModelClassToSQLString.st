test - database - postgresql
testConvertModelClassToSQLString

	| adapter |
	adapter := RPPostgreSQLAdapter new.
	self assert: 'var2 INT, var1 VARCHAR(30) PRIMARY KEY' equals: (adapter convertModelToSQLString: RPTestModel).