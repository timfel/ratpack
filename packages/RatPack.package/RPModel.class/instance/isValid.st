initialize
isValid

	| result |
	(self modelName size < 1)ifTrue: [^false].
	result:= true.
	self attributes do: [:each | 
		result := ((self checkClassForMethod: each) & result)].
	^result
