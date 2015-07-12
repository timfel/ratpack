test - models
testTestModelReconstructObject

	| dictionary object| 
	dictionary := Dictionary newFrom: { 'name'->'Hans' . 'salary'->99 }.
	object :=  RPTestModel reconstructObject: dictionary. 
	self assert: 'Hans' equals:  (object instVarNamed: 'name').
	self assert:  99 equals: (object instVarNamed: 'salary') .
	