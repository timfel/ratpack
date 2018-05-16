routing
processRequest: aHttpRequest

	| response |
	self
		request: aHttpRequest;
		response: (HttpResponse fromString: '').
	
	[ self parseRequestContent: aHttpRequest ] on: Error do: [:e | ^ self badRequest ].
	
	[response := self route: aHttpRequest] on: Error do: [:e | self serverError: e].

	self body ifEmpty: [self body: response].
	(self body isEmpty and: [self status = 404]) ifTrue: [self notFound].
	self logWindow logRequest: aHttpRequest andResponse: response.
	^ self response
