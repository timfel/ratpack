interaction
postHook: anEnv

	self incrementPostHookCounter: anEnv.
	self incrementTimer: anEnv.
	anEnv at: (self class name, #PostHookTime) asSymbol put: (anEnv at: #time).