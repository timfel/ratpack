tests
testCreateObjectsWithDefaultValues

	| dictionary modelName model value1 value2 object |
	dictionary := IdentityDictionary new.
	modelName := 'test'.
	value1 := 1.
	value2 := 'green'.
	app registerModel: 'test' on: RPTest with: #('test' 'variable').
	dictionary at: 'test' asSymbol put: value1.
	dictionary at: 'variable' asSymbol put: value2.
	app setDefaultValues: dictionary forModel: modelName.
	model := app getRegisteredModel: modelName.
	self assert: (
		[app addObject: 
				(JsonObject new) 
				from: modelName. true.] on: Warning do: [false]).

	object := model createObject: (JsonObject new).
	self assert: (object instVarNamed: 'test') equals: value1.
	self assert: (object instVarNamed: 'variable') equals: value2.
	self assert: (object instVarNamed: 'variable') = 'foobar' equals: false.