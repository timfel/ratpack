test - database - postgresql
testConvertModelClassToSQLString

	| adapter |
	adapter := RPPostgreSQLAdapter new.
	self assert: 'salary INT, name VARCHAR(30)' 
		 equals: (adapter convertModelToSQLString: RPTestModel).