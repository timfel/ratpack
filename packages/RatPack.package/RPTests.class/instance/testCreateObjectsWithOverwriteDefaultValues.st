tests
testCreateObjectsWithOverwriteDefaultValues

	| dictionary modelName model default1 default2  object jsonObject stream string |
	dictionary := IdentityDictionary new.
	modelName := 'test'.
	default1 := '1'.
	default2 := 'green'.
	app registerModel: 'test' on: RPTest with: #('test' 'variable').
	dictionary at: 'test' asSymbol put: default1.
	dictionary at: 'variable' asSymbol put: default2.
	app setDefaultValues: dictionary forModel: modelName.
	model := app getRegisteredModel: modelName.
	
	string := ('{ "variable":"blue" }' asOrderedCollection).
	stream := ReadStream on:  string from: 1 to: (string size).
	jsonObject := Json readFrom: stream.	

	object := model createObject: jsonObject.
	self assert: (object instVarNamed: 'variable') equals: 'blue'.
