actions
objectNotFound

	self contentType: 'application/json'.
	self status: 404.
	self body: '{"error": "404 - object not found!"}'