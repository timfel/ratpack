tests
testCreateObjectByModel
	| tmp json attributes object instances |
	attributes := OrderedCollection new. 
	attributes add: (Association key: 'test' asSymbol value: 20 ).
	attributes add: (Association key: 'variable' asSymbol value: 'green' ).
	object := JsonObject fromAssociations: attributes.
	instances := OrderedCollection new. 
	instances add: (Association key: '1' asSymbol value: object ).
	json := Json newWithConstructors: instances.

	app registerModel: 'testmodel' on: RPTest with: #( 'test' 'variable' ).
	tmp := (app getRegisteredModel: 'testmodel') getObjects size.
	self assert: ([(app createObject: json fromModel: 'testmodel'). true]on: Warning  do:[false]).
	self assert: (tmp < (((app getRegisteredModel: 'testmodel') getObjects size)))
