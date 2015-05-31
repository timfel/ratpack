tests
testInstantiateFromJSON

	| attributes object json|
	"correct JSON"
	attributes := OrderedCollection new. 
	attributes add: (Association key: 'test' asSymbol value: 20 ).
	attributes add: (Association key: 'variable' asSymbol value: 'green' ).
	json := Json newWithConstructors: attributes.
	object := RPTest newWith: json.
	self assert: (object instVarNamed: 'test') equals: 20. 
	self assert: (object instVarNamed: 'variable') equals: 'green'