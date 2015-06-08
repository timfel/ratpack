initialize
initializeFrom: aJsonObject
	
	aJsonObject keys do: [:each | 
		self instVarNamed: each put: (aJsonObject at: each)].
	super initialize