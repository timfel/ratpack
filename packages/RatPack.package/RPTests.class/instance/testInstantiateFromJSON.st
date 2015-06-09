tests
testInstantiateFromJson

	| object jsonObject string stream |
	"correct JSON"
	string := ('{"test":"20", "variable":"green" }' asOrderedCollection).
	stream := ReadStream on:  string from: 1 to: (string size).
	jsonObject := Json readFrom: stream.
	
	object := RPTest newWith: jsonObject.
	self assert: (object instVarNamed: 'test') equals: '20'. 
	self assert: (object instVarNamed: 'variable') equals: 'green'