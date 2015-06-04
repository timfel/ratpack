tests
testCreateObjectsWithOverwriteDefaultValues

	| attributes dictionary modelName model default1 default2 value3  object json |
	dictionary := IdentityDictionary new.
	modelName := 'test'.
	default1 := 1.
	default2 := 'green'.
	value3 := 'blue'.
	app registerModel: 'test' on: RPTest with: #('test' 'variable').
	dictionary at: 'test' asSymbol put: default1.
	dictionary at: 'variable' asSymbol put: default2.
	app setDefaultValues: dictionary forModel: modelName.
	model := app getRegisteredModel: modelName.
	
	attributes := OrderedCollection new.
	attributes add: (Association key: 'variable' asSymbol value: value3 ).
	json :=  (Json newWithConstructors: attributes).

	object := model createObject: json.
	self assert: (object instVarNamed: 'variable') equals: value3.
