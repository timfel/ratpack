tests
testRemoveObject

	| jsonObject string stream |

	string := ('{"test":"20", "variable":"green" }' asOrderedCollection).
	stream := ReadStream on:  string from: 1 to: (string size).
	jsonObject := Json readFrom: stream.

	app registerModel: 'testmodel' on: RPTest with: #('test' 'variable').
	app addObject: jsonObject from: 'testmodel'.
	self assert: ((app database modelDictionary at: 'testmodel' asSymbol ) size = 1).
	app removeObject: 1 from: 'testmodel'.
	self assert: ((app database modelDictionary at: 'testmodel' asSymbol ) size = 0)