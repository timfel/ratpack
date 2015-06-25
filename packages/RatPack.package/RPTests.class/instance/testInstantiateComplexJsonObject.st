tests - json
testInstantiateComplexJsonObject

	| object jsonObject |
	"correct JSON"
	 jsonObject := RPTestHelper createJsonObjectFrom:  '{"test":"20", "variable":{"value1":1 , "value2":2} }'.

	object := RPTest newWith: jsonObject.
	self assert: (object instVarNamed: 'test') equals: '20'. 
	self assert: (Json render: (object instVarNamed: 'variable')) equals: '{"value2":2,"value1":1}'