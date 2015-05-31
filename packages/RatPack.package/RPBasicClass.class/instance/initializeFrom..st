initialize
initializeFrom: aJSON
	| keys |
	keys := aJSON ctorMap keys.
	keys do: [:each | 
		self instVarNamed: each put: (aJSON ctorMap at: each)].
	super initialize