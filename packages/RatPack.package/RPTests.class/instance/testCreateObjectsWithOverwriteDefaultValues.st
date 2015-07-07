test - objects - old
testCreateObjectsWithOverwriteDefaultValues

	| dictionary model object jsonObject default newValue |
	default := 'green'.
	newValue:= 'blue'.
	dictionary := IdentityDictionary new.
	app registerModel: 'test' on: RPTest with: #('test' 'variable').
	dictionary at: 'test' asSymbol put: '1'.
	dictionary at: 'variable' asSymbol put: default.
	app setDefaultValues: dictionary forModel: 'test'.
	model := app getRegisteredModel: 'test'.
	
	jsonObject := RPTestHelper createJsonObjectFrom: '{ "variable":"blue" }'.

	object := model createObject: jsonObject.
	self assert: (object instVarNamed: 'variable') equals: newValue.
