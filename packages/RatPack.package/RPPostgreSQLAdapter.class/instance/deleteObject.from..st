object handling
deleteObject: anId from: aRPModelClass
	
	self connection startup;
		execute: ('DELETE FROM ', (aRPModelClass tableName), ' WHERE ID = ', anId );
		terminate