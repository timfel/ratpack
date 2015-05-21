tests
testCreateObjectByModel
	| tmp |
	app registerModel: 'testmodel' on: RPTest with: #( 'test' 'variable' ).
	tmp := (app getRegisteredModel: 'testmodel') getObjects size.
	self assert: ([(app getRegisteredModel: 'testmodel') createObject: Json new. true]on: Warning  do:[false]).
	self assert: (tmp < (((app getRegisteredModel: 'testmodel') getObjects size)))
