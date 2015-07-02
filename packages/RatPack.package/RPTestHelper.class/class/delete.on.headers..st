http requests
delete: aUrl on: anApplication headers: aDictionary

	aDictionary at: 'Accept' ifAbsentPut: '*/*'.
	^ self request: aUrl
		on: anApplication
		method: 'DELETE'
		headers: aDictionary
		content: ''