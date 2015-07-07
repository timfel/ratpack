table handling
dropTableFor: aRPModelClass

	self connection startup;
		execute: ('DROP TABLE IF EXISTS ', (aRPModelClass tableName));
		terminate