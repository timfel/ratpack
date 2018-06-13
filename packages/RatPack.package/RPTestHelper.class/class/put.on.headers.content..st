http requests
put: aUrl on: anApplication headers: aDictionary content: content

	| contentType |
	contentType := content isString
						ifTrue: ['application/octet-stream']
						ifFalse: ['application/x-www-form-urlencoded'].
	aDictionary
		at: 'Accept' ifAbsentPut: '*/*';
		at: 'Content-Type' ifAbsentPut: contentType.
	^ self request: aUrl on: anApplication
		method: 'PUT' headers: aDictionary
		content: content