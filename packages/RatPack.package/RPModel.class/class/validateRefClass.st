validation
validateRefClass

	self dataTypes keys do: [:each | 
				(self checkRefClassForInstanceVariable: each) 
					ifFalse: [^ false]].
	^ true