tests
testGetValuesThroughModels
	| a b c t1 t2|
	a := RPAdress new.
	b := RPAdress new.
	c := RPPerson new.
	app registerModel: 'Adress' on: RPAdress with: #( 'city' 'country' ).
	app registerModel: 'Adressfull' on: RPAdress with: #( 'city' 'country' 'houseNumber' 'street').
	t1 := app getRegisteredModel: 'Adress'.
	t2 := app getRegisteredModel: 'Adressfull'.
	self assert: (t1 attributes size = 2).
	self assert: (t2 attributes size = 4).
	self assert: (t1 getObjects size >1)
"NOT FINISCHED, need a specification waht a getObjects should return"