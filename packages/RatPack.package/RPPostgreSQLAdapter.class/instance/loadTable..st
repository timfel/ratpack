sql helpers
loadTable: aRPModelClass

	| metaInfoStatement response |
	metaInfoStatement := 'select column_name, data_type from information_schema.columns where table_name = ''config'';'.
	self connection startup. 
	response := self connection execute: metaInfoStatement.
	self connection terminate.
	^ response