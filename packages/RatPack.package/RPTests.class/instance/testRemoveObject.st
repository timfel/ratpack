test - objects
testRemoveObject

	| jsonObject |

	 jsonObject := RPTestHelper createJsonObjectFrom:  '{"test":"20" , "variable":"green" }'.

	app registerModel: 'testmodel' on: RPTest with: #('test' 'variable').
	app addObject: jsonObject from: 'testmodel'.
	self assert: ((app database modelDictionary at: 'testmodel' asSymbol ) size = 1).
	app removeObject: 1 from: 'testmodel'.
	self assert: ((app database modelDictionary at: 'testmodel' asSymbol ) size = 0)