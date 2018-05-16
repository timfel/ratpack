private
response: aValue
	
	^ self threadLocal: self class responseKey put: aValue
