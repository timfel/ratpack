test - models
testTestModelCreateJsonFor

	| dictionary object json| 
	dictionary := Dictionary newFrom: { 'name'->'Hans' . 'salary'->99 }.
	object :=  RPTestModel reconstructObject: dictionary. 
	json := RPTestModel createJsonFor: object.
	self assert: '{"name":"Hans","salary":99}' equals: json