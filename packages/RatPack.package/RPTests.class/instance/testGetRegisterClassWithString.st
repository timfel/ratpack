tests
testGetRegisterClassWithString

	| validString unvalidString1 unvalidString2 unvalidString3 |
	validString := '<test1<a><b<c><d>>>'.
	unvalidString1:= '<test2<a><b<c><d>>'.
	unvalidString2 := '<test3<a><b<c><>>>'.
	unvalidString3 := '<<a><b<c><d>>>'.
   	app registerClass: validString.
	app registerClass: unvalidString1.
	app registerClass: unvalidString2.
	app registerClass: unvalidString3.
    	self assert: (( app getRegisteredClass: 'test1') asString = validString).
	"self assert: (( app getRegisteredClass: 'test2') signal = #KeyNotFound ).
	self assert: (( app getRegisteredClass: 'test3') signal =  #KeyNotFound).
	self assert: (( app getRegisteredClass: '') signal =  #KeyNotFound)."