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
	self assert: ([object := app getObject: 3 from: modelName. false]
					on: Warning do: [true]). 
	self assert: ([object := app getObject: 1 from: modelName. true]
			on: Warning do: [false]). 
	self assert: (object := app getAllObjectsFrom: modelName) size equals: 2