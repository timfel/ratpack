test - models
testTestModelCreateDefaultObject
	
	|  object |
	object := RPTestModel createObject: '{}'.
	self assert: 1 equals:  (object instVarNamed: 'salary').
	self assert:  'Max Mustermann' equals: (object instVarNamed: 'name') .