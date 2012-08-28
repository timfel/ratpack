http requests
post: aUrl on: anApplication headers: aDictionary content: content

	| contentType |
	contentType := MIMEDocument contentTypeFormData.
	aDictionary
		at: 'Accept' ifAbsentPut: '*/*';
		at: 'Content-Type' ifAbsentPut: contentType.
	^ self request: aUrl on: anApplication
		method: 'POST' headers: aDictionary
		content: content