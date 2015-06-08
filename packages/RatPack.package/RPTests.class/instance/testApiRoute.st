tests
testApiRoute
	| result |
	result := RPTestHelper get: '/api/person' on: app.