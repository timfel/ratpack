interaction
incrementPreHookCounter: anEnv

	anEnv at: #preHookCounter 
		ifPresent: [ :counter | anEnv at: #preHookCounter put: counter +1. ]
		ifAbsentPut: [ 1 ].