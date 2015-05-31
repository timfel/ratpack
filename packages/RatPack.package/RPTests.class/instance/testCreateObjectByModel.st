tests
testCreateObjectByModel
	| json attributes |
	attributes := OrderedCollection new. 
	attributes add: (Association key: 'test' asSymbol value: 20 ).
	attributes add: (Association key: 'variable' asSymbol value: 'green' ).
	json := Json newWithConstructors: attributes.

	app registerModel: 'testmodel' on: RPTest with: #( 'test' 'variable' ).
	self assert: ([(app addObject: json from: 'testmodel'). true]on: Warning  do:[false]).

