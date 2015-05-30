tests
testCreateModel

	self assert: ( [app registerModel: '' on: RPTest with: #( 'test' ). false]on: Warning do:[true] ).
	self assert: ( [app registerModel: 'test2' on: RPTest with: #( 'notThere' ). false]on: Warning do:[true] ).
	self assert: ( [app registerModel: 'test' on: RPTest with: #( 'test' ). true]on: Warning do:[false] ).
	self assert: ( [app registerModel: 'test' on: RPTest with: #( 'test' ). false]on: Warning do:[true] )