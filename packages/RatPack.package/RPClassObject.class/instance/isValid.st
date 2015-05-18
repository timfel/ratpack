accessing
isValid
	| result |
	result := (self broken not).
	self children do: [:each |
		result := (result and: (each isValid))].
	^ result