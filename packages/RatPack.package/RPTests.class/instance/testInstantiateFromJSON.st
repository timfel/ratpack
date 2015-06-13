tests - json
testInstantiateFromJson

	| object jsonObject  |
	"correct JSON"
	 jsonObject := RPTestHelper createJsonObjectFrom:  '{"test":"20", "variable":"green" }'.

	object := RPTest newWith: jsonObject.
	self assert: (object instVarNamed: 'test') equals: '20'. 
	self assert: (object instVarNamed: 'variable') equals: 'green'