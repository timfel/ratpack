test - models
testTestModelReconstructObject

	| dictionary object| 
	dictionary := Dictionary newFrom: { 'var1'->'Hans' . 'var2'->99 }.
	object :=  RPTestModel reconstructObject: dictionary. 
	self assert: 'Hans' equals:  (object instVarNamed: 'var1').
	self assert:  99 equals: (object instVarNamed: 'var2') .
	