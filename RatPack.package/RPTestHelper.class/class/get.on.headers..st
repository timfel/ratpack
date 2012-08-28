http requests
get: aUrl on: anApplication headers: aDictionary

	aDictionary at: 'Accept' ifAbsentPut: '*/*'.
	^ self request: aUrl
		on: anApplication
		method: 'GET'
		headers: aDictionary
		content: ''