tests
testRegisterModel

   	app registerModel: 'test' on: RPClass with: #( 'test' 'test:' 'get:').
    	self assert: ((app getRegisteredModel: 'test') isValid).