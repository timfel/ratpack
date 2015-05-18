initialize
isValid

	| result |
	result:= true.
	self attributes do: [:each | 
		result := ((self checkClassForMethod: each) & result)].
	^result
