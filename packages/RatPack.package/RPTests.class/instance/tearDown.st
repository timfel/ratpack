running
tearDown

	app database dropTableFor: RPTestModel.
	RPApplication removeService: (RPApplication serviceNamed: 'a RPTestApp')