routes
handleRequestForSetHeaders
	<get: '/setHeaders'>
	
	self contentType: 'application/json'.
	self headersAt: 'handler-headers-work' put: 'true'.
	self addCookies: {'TestCookie'} asOrderedCollection.