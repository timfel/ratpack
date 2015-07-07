test - models
testTestModelCreateDefaultObject
	
	|  object |
	object := RPTestModel createObject: '{}'.
	self assert: 1 equals:  (object instVarNamed: 'var1').
	self assert:  'Max Mustermann' equals: (object instVarNamed: 'var2') .