http requests
delete: aUrl on: anApplication content: aString

	^ self update: aUrl on: anApplication headers: Dictionary new content: aString