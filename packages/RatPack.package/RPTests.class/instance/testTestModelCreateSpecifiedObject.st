test - models
testTestModelCreateSpecifiedObject

	|  object |
	object := RPTestModel createObject: '{"var2":"Andreas Anders"}'.
	self assert: 1 equals:  (object instVarNamed: 'var1').
	self assert:  'Andreas Anders' equals: (object instVarNamed: 'var2') .