test - models
testTestModelCreateSpecifiedObject

	|  object |
	object := RPTestModel createObject: '{"var1":"specified"}'.
	self assert: 'specified' equals:  (object instVarNamed: 'var1').
	self assert:  10 equals: (object instVarNamed: 'var2') .