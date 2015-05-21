tests
testCheckJson
	
	| object attributes instances j validator|
	"correct JSON"
	attributes := OrderedCollection new. 
	attributes add: (Association key: 'test' asSymbol value: 20 ).
	attributes add: (Association key: 'variable' asSymbol value: 'green' ).
	object := JsonObject fromAssociations: attributes.
	instances := OrderedCollection new. 
	instances add: (Association key: '1' asSymbol value: object ).
	j := Json newWithConstructors: instances.
	validator := RPModel new: 'test' on: RPTest with: #( 'test' 'variable' ).
	self assert: (validator checkJSON: j).
	"Json with not all attributes set"
	attributes := OrderedCollection new. 
	attributes add: (Association key: 'test' asSymbol value: 20 ).
	object := JsonObject fromAssociations: attributes.
	instances := OrderedCollection new. 
	instances add: (Association key: '1' asSymbol value: object ).
	j := Json newWithConstructors: instances.
	self assert: ((validator checkJSON: j) = false).
	"Json with to many attributes"
	attributes := OrderedCollection new. 
	attributes add: (Association key: 'test' asSymbol value: 20 ).
	attributes add: (Association key: 'variable' asSymbol value: 20 ).
	attributes add: (Association key: 'test2' asSymbol value: 20 ).
	object := JsonObject fromAssociations: attributes.
	instances := OrderedCollection new. 
	instances add: (Association key: '1' asSymbol value: object ).
	j := Json newWithConstructors: instances.
	self assert: ((validator checkJSON: j) = false).
	"Json with wrong attributes"
	attributes := OrderedCollection new. 
	attributes add: (Association key: 'test2' asSymbol value: 20 ).
	attributes add: (Association key: 'variable' asSymbol value: 20 ).
	object := JsonObject fromAssociations: attributes.
	instances := OrderedCollection new. 
	instances add: (Association key: '1' asSymbol value: object ).
	j := Json newWithConstructors: instances.
	self assert: ((validator checkJSON: j) = false).