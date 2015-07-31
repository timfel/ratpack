validation
validateRefClass

	^ self dataTypes keys detect: [:variable |
			(self checkRefClassContainsInstanceVariable: variable) not] 
			ifNone: [true].