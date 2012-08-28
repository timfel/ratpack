http requests
request: aUrl on: anApplication method: aString headers: headers content: content
	| request |
	request := self mockRequestFor: aUrl method: aString headers: headers content: content.
	^ anApplication processRequest: request