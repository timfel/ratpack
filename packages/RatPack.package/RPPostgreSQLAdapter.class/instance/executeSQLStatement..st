connection
executeSQLStatement: anSQLStatement
	
	self connection startup;
		execute: anSQLStatement;
		terminate