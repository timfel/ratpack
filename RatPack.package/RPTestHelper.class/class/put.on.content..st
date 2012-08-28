http requests
put: aUrl on: anApplication content: aString

	^ self put: aUrl on: anApplication headers: Dictionary new content: aString