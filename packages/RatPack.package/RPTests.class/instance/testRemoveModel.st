tests
testRemoveModel
	
	app registerModel: 'test' on: RPClass with: #( 'test' ).
	self assert: ( [app removeModel: 'test'. ^true]on: KeyNotFound do:[^false] ).
	self assert: ( [app removeModel: 'test'. false]on: KeyNotFound do:[true] ).
	self assert: ([app getRegisteredModel: 'test'. false]on: KeyNotFound do:[true]).
