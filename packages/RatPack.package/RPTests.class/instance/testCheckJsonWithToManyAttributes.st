tests
testCheckJsonWithToManyAttributes
	
	| attributes json validator|

	validator := RPModel new: 'test' on: RPTest with: #( 'test' 'variable' ).
	"Json with to many attributes"
	attributes := OrderedCollection new. 
	attributes add: (Association key: 'test' asSymbol value: 20 ).
	attributes add: (Association key: 'variable' asSymbol value: 20 ).
	attributes add: (Association key: 'test2' asSymbol value: 20 ).
	json := Json newWithConstructors: attributes.
	self assert: ((validator checkJSON: json) = false).