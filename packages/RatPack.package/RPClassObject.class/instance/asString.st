accessing
asString
	| result |
	result := '<', self header.
	self children do: [:each | 
		result := result, each asString].
	result := result, '>'.
	^ result