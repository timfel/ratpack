tests
testRemoveModel
	
	app registerModel: 'test' on: RPClass with: #( 'test' ).
	[app removeModel: 'test'.]on: KeyNotFound do:[].
	self assert: ( [app removeModel: 'test'. false]on: KeyNotFound do:[true] ).
	self assert: ([app getRegisteredModel: 'test'. false]on: KeyNotFound do:[true]).

   	app registerModel: 'test' on: RPClass with: #( 'test' ).
    	self assert: ( [app removeModel: 'test'. true]on: KeyNotFound do:[ false] ).