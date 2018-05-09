actions
badRequest

	self contentType: 'text/html'.
	self status: 400.
	self body: (self est: self class badRequestPage)