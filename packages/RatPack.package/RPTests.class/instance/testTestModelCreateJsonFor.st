test - models
testTestModelCreateJsonFor

	| dictionary object json| 
	dictionary := Dictionary newFrom: { 'var1'->'Hans' . 'var2'->99 }.
	object :=  RPTestModel reconstructObject: dictionary. 
	json := RPTestModel createJsonFor: object.
	self assert: '{"var1":"Hans","var2":99}' equals: json