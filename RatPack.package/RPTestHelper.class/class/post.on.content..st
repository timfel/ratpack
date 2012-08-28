http requests
post: aUrl on: anApplication content: aString

	^ self post: aUrl on: anApplication headers: Dictionary new content: aString