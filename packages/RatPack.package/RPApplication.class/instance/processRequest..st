routing
processRequest: aHttpRequest

	self 
		request: aHttpRequest;
		response: (HttpResponse fromString: '').

	[ self parseRequestContent: aHttpRequest ] on: Error do: [:e | ^ self badRequest ].
	
	[self route: aHttpRequest] on: Error do: [:e | self serverError: e].

	self logWindow logRequest: aHttpRequest andResponse: self body.
	^ self response
