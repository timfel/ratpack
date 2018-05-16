private
request: aValue
	
	^ self threadLocal: self class requestKey put: aValue
