as yet unclassified
initialize 

	|aPerson1 aPerson2 aAdress|

	super initialize.

	aPerson1 := RPPerson new.
	aPerson2 := RPPerson new.
	aAdress := RPAdress new.

	aAdress 
		country: 'Germany';
		city: 'Potsdam';
		street: 'Stahnsdorfer Straße';
		houseNumber: '142b';
		yourself.

	aPerson1 
		name: 'Herbert';
		surname: 'Stark';
		age: 38  ;
		male: true ;
		adress: aAdress ;
		yourself.

	aPerson2
		name: 'Susi';
		surname: 'Stark';
		age: 56  ;
		male: false ;
		adress: aAdress ;
		yourself.