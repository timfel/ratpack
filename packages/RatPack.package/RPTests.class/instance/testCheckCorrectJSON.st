tests
testCheckCorrectJSON
	| attributes validator json|
	"correct JSON"
	attributes := OrderedCollection new. 
	attributes add: (Association key: 'test' asSymbol value: 20 ).
	attributes add: (Association key: 'variable' asSymbol value: 'green' ).

	json := Json newWithConstructors: attributes.
	validator := RPModel new: 'test' on: RPTest with: #( 'test' 'variable' ).
	self assert: (validator checkJSON: json).