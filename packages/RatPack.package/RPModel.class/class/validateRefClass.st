validation
validateRefClass

	self dataTypes keys do: [:each | 
				(self checkRefClassContainsInstanceVariable: each) 
					ifFalse: [^ false]].
	^ true