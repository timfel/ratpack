tests
testAddObject

	| aJSON attributes|
	attributes := OrderedCollection new. 
	attributes add: (Association key: 'test' asSymbol value: 20 ).
	attributes add: (Association key: 'variable' asSymbol value: 'green' ).
	aJSON := Json newWithConstructors: attributes.
	app registerModel: 'testmodel' on: RPTest with: #('test' 'variable').
	app addObject: aJSON from: 'testmodel'.
	self assert: ((app database modelDictionary at: 'testmodel' asSymbol ) size = 1).
	app addObject: aJSON from: 'testmodel'.
	self assert: ((app database modelDictionary at: 'testmodel' asSymbol ) size = 2)