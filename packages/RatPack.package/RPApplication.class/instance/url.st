accessing
url

	^ String streamContents: [:stream |
		stream nextPutAll: 'http://'.
		stream nextPutAll: (self request host ifNil: ['localhost'])]
