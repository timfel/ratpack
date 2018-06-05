interaction
preHook: anEnv

	self incrementPreHookCounter: anEnv.
	self incrementTimer: anEnv.
	anEnv at: (self class name, #PreHookTime) asSymbol put: (anEnv at: #time).
	^ true