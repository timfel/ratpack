test - models
testSetDefaultValuesForModels

	| dictionary modelName model value |
	dictionary := IdentityDictionary new.
	modelName := 'test'.
	value := 1.
	app registerModel: 'test' on: RPTest with: #('test' 'variable').
	dictionary at: 'test' asSymbol put: value.
	app setDefaultValues: dictionary forModel: modelName.
	model := app getRegisteredModel: modelName.
	self assert: (model getDefaultValueFor: 'test') equals: value.
	self assert: ([(model getDefaultValueFor: 'notThere'). false]
		on: Warning do: [true]).
	app removeDefaultValues: #('test') from: modelName.
	self assert: ([(model getDefaultValueFor: 'test'). false]
		on: Warning do: [true])