test - app accessing
testRegisterModelClass

	app registerModel: RPTestModel.
	app database: RPPostgreSQLAdapter new.
	self assert: (app getRegisteredModel: 'RPTestModel') equals: RPTestModel