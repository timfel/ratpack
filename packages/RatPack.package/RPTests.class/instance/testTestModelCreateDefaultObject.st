test - models
testTestModelCreateDefaultObject
	
	|  object |
	object := RPTestModel createObject: '{}'.
	self assert: 'FirstModel' equals:  (object instVarNamed: 'var1').
	self assert:  10 equals: (object instVarNamed: 'var2') .