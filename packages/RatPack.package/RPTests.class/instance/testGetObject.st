tests
testGetObject

	| modelName object  string stream jsonObject|

	string := ('{"test":20, "variable":"green" }' asOrderedCollection).
	stream := ReadStream on:  string from: 1 to: (string size).
	jsonObject := Json readFrom: stream.
	modelName := 'test'.
	app registerModel: modelName
		on: RPTest
		with: #('test' 'variable' ).
	app addObject: jsonObject from: modelName. 
	app addObject: jsonObject from: modelName. 
	self assert: ([object := app getObjectAsJsonStringfrom: modelName at: 3. false]
					on: Warning do: [true]). 
	self assert: ([object := app getObjectAsJsonStringfrom: modelName at: 1. true]
			on: Warning do: [false]). 
	self assert: (jsonObject :=Json readFrom: (ReadStream on: (object := app getAllObjectsAsJsonStringFrom: modelName) from: 0 to: object size)) size equals: 2.