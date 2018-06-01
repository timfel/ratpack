interaction
postHook: anEnv

	super postHook: anEnv.
	anEnv at: #wordCount put: (anEnv body subStrings size).


	