tests
testRegisterModel

   	app registerModel: 'test' on: RPClass with: #( 'test' ).
    	self assert: ((app getRegisteredModel: 'test') isValid).
	self assert: ([app getRegisteredModel: 'test'. true]on: KeyNotFound do:[false]).