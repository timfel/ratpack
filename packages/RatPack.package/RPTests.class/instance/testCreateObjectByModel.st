tests
testCreateObjectByModel
	| jsonObject string stream |

	string := ('{"test":"20", "variable":"green" }' asOrderedCollection).
	stream := ReadStream on:  string from: 1 to: (string size).
	jsonObject := Json readFrom: stream.

	app registerModel: 'testmodel' on: RPTest with: #( 'test' 'variable' ).
	self assert: ([(app addObject: jsonObject from: 'testmodel'). true]on: Warning  do:[false]).

