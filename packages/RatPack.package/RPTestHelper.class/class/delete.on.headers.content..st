http requests
delete: aUrl on: anApplication headers: aDictionary content: content

	| contentType |
	contentType := content isString
						ifTrue: ['application/octet-stream']
						ifFalse: ['application/x-www-form-urlencoded'].
	aDictionary
		at: 'Accept' ifAbsentPut: '*/*';
		at: 'Content-Type' ifAbsentPut: contentType.
	^ self request: aUrl on: anApplication
		method: 'DELETE' headers: aDictionary
		content: content