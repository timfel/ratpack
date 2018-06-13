interaction
incrementPostHookCounter: anEnv

	anEnv at: #postHookCounter 
		ifPresent: [ :counter | anEnv at: #postHookCounter put: counter +1. ]
		ifAbsentPut: [ 1 ].