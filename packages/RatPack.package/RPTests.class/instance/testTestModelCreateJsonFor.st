test - models
testTestModelCreateJsonFor

	| dictionary object jsonObject jsonString otherDictionary | 
	dictionary := Dictionary newFrom: { 'name'->'Hans' . 'salary'->99 }.
	otherDictionary := Dictionary newFrom: { 'nombre'->'Hans' . 'salary'->50 }.
	object :=  RPTestModel reconstructObject: dictionary. 
	jsonString := RPTestModel createJsonFor: object.
	jsonObject := Json readFrom: (ReadStream on: jsonString from: 1 to: (jsonString size)).
	
	self assert:(dictionary difference: jsonObject) isEmpty.
	self assert: (otherDictionary difference: jsonObject) notEmpty. 
	self assert: (dictionary keys) equals: (jsonObject keys).