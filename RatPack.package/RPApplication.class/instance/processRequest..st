routing
processRequest: aHttpRequest
	| response |
	self
		threadLocal: self class requestKey put: aHttpRequest;
		threadLocal: self class responseKey put: (HttpResponse fromString: '').
	[response := self route: aHttpRequest] on: Error do: [:e | self serverError: e].
	self body ifEmpty: [self body: response].
	(self body isEmpty and: [self status = 404]) ifTrue: [self notFound].
	^ self response
