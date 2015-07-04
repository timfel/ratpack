table handling
createTableFor: aModel

	self connection startup.
	self connection execute: ('CREATE TABLE ', aModel tableName, ' (',  (self convertModelToSQLString: aModel) , ')').
	self connection terminate