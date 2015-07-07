test - objects - old
testObjectIndexing

	| jsonObject |
	
	jsonObject := RPTestHelper createJsonObjectFrom:  '{"test":"20" , "variable":"green" }'.

	app registerModel: 'testmodel' on: RPTest with: #('test' 'variable').
	app addObject: jsonObject from: 'testmodel'.
	self assert: ((app database idDictionary at: #testmodel) = 2).
	app addObject: jsonObject from: 'testmodel'.
	self assert: ((app database idDictionary at: #testmodel) = 3)