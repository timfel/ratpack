test - models
testTestModelCreateSpecifiedObjectInvalideJson

	self assert: [ ( [RPTestModel createObject: '{"var":"specified"}'] on: Warning do: [true])]