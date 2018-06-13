http requests
httpRequestFor: aUrl method: aString headers: headers content: content
	| port rawUrl server rawContent rawHeaders relativeUrl |
	rawUrl := (aUrl startsWith: 'http')
				ifTrue: [aUrl copyFrom: 'http://' size to: aUrl size]
				ifFalse: [aUrl].
	server := rawUrl copyUpTo: $:.
	port := ((rawUrl copyAfter: $:) ifEmpty: ['80']) asNumber.
	relativeUrl := (rawUrl copyAfter: $:)
					ifEmpty: [rawUrl copyFrom: server size + 1 to: rawUrl size]
					ifNotEmptyDo: [:str | str copyFrom: port asString size + 1 to: str size].
	(relativeUrl startsWith: '/') ifFalse: [relativeUrl := '/', relativeUrl].
	rawContent := ''.
	content notNil & content notEmpty ifTrue: [
		rawContent := content isString
					ifTrue: [content]
					ifFalse: [(HTTPSocket argString: content) allButFirst].
		headers at: 'Content-Length' put: rawContent size].
	rawHeaders := String streamContents: [:stream |
		headers keysAndValuesDo: [:key :value |
			stream nextPutAll: key; nextPut: $:; space; nextPutAll: value asString; crlf]].
	^ HttpRequest readFromStream: (
		(ReadWriteStream on: (String new: 100))
			nextPutAll: aString; space; nextPutAll: relativeUrl; nextPutAll: ' HTTP/1.0'; crlf;
			nextPutAll: 'Host: '; nextPutAll: server; nextPut: $:; nextPutAll: port asString; crlf;
			nextPutAll: 'Connection: close'; crlf;
			nextPutAll: 'User-Agent: RatPackMockRequestor'; crlf;
			nextPutAll: rawHeaders; crlf;
			nextPutAll: rawContent; crlf;
			nextPutAll: (rawContent ifNotEmpty: [String crlf]);
			reset;
			yourself)