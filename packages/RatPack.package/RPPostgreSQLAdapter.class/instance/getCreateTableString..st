accessing
getCreateTableString: anRPModel
	
	^ 'CREATE TABLE ', (anRPModel tableName), ' (ID serial Primary Key, ' ,
	(self convertModelToSQLString: anRPModel) , ')'