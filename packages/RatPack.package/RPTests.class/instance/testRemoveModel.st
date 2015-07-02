test - models
testRemoveModel
	
	app registerModel: 'test' on: RPTest with: #( 'test' 'variable' ).
	self assert: ( [app removeModel: 'test'. true] on: KeyNotFound do: [false] ).
	self assert: ( [app removeModel: 'test'. false] on: KeyNotFound do: [true] ).
	self assert: ([app getRegisteredModel: 'test'. false] on: KeyNotFound do:[true]).
	self assert: [((app routesFor: #get:) collect: [:route | route key]) detect: [:route | route includesSubString: '/api/test'] ifFound: [false] ifNone: [true]]
	