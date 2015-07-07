test - database
testCreateTable
	"INVALID TEST" 
	
	| model |
	model := RPTestModel new.
	RPTestHelper createTable: model on: app 