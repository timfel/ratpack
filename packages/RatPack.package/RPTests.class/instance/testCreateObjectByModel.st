test - objects - old
testCreateObjectByModel
	| jsonObject |

 	jsonObject := RPTestHelper  createJsonObjectFrom: '{"test":"20","variable":"green" }'.

	app registerModel: 'testmodel' on: RPTest with: #( 'test' 'variable' ).
	self assert: ([(app addObject: jsonObject from: 'testmodel'). true]on: Warning  do:[false]).

