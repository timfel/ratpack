actions
objectNotFound

	self contentType: 'application/json'.
	self status: 404.
	self body: self class objectNotFoundJson.