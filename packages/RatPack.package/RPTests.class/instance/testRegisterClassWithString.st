tests
testRegisterClassWithString

	| validString |
	validString := '<test1<a><b<c><d>>>'.
   	app registerClass: validString.
    	self assert: (( app getRegisteredClass: 'test1') asString = validString)
