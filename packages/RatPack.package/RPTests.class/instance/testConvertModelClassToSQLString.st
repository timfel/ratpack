test - database - postgresql
testConvertModelClassToSQLString

	| adapter |
	adapter := RPPostgreSQLAdapter new.
	self assert: 'var2 VARCHAR(30), var1 INT PRIMARY KEY' equals: (adapter convertModelToSQLString: RPTestModel).