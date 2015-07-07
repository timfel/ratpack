table handling
createTableFor: aRPModelClass

	self connection startup.
	self connection execute: 
			('CREATE TABLE ', (aRPModelClass tableName), ' (' ,  (self convertModelToSQLString: aRPModelClass) , ')' ).
	self connection terminate