test - app accessing
testRemoveModelClass

	app registerModel: RPTestModel.
	self assert: (app getRegisteredModel: 'RPTestModel') equals: RPTestModel.
	app removeModel: RPTestModel.
	self assert: ([app getRegisteredModel: 'RPTestModel'. false]on: Error do:[true])