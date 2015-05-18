actions
serverError: anException

	self contentType: 'text/html'.
	self status: 500.
	self isDebugMode ifTrue: [anException signal].
	self body: (self est: self class errorPage)
