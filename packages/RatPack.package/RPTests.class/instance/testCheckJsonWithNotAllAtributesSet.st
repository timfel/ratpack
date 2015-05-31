tests
testCheckJsonWithNotAllAtributesSet
	| attributes json validator|
	"Json with not all attributes set"
	attributes := OrderedCollection new. 
	attributes add: (Association key: 'test' asSymbol value: 20 ).
	json := Json newWithConstructors: attributes.
	validator := RPModel new: 'test' on: RPTest with: #( 'test' 'variable' ).
	self assert: ((validator checkJSON: json) = false).