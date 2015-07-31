sql helpers
executeSQLStatement: anSQLStatement
	
	| response |
	self connection startup.
	response := self connection execute: anSQLStatement.
	self connection terminate.
	^ response