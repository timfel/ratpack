http requests
mockRequestFor: aUrl method: aString headers: headers content: content
	| rawContent |
	rawContent := ''.
	content notNil & content notEmpty ifTrue: [
		rawContent := content isString
					ifTrue: [content]
					ifFalse: [(HTTPSocket argString: content) allButFirst].
		headers at: 'Content-Length' put: rawContent size].
	^ RPMockRequest method: aString rawUrl: aUrl headers: headers content: rawContent