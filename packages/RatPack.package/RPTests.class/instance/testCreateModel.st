tests
testCreateModel


	self assert: ( [app registerModel: '' on: RPClass with: #( 'test' ). false]on: Warning do:[true] ).
	self assert: ( [app registerModel: 'test2' on: RPClass with: #( 'notThere' ). false]on: Warning do:[true] ).
	self assert: ( [app registerModel: 'test' on: RPClass with: #( 'test' ). true]on: Warning do:[false] ).
	self assert: ( [app registerModel: 'test' on: RPClass with: #( 'test' ). false]on: Warning do:[true] ).