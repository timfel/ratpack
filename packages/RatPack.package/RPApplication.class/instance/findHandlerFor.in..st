routing
findHandlerFor: aHttpRequest in: routes
	| result matcher |
	matcher := RxMatcher forString: aHttpRequest url.
	
	result := routes detect: [:route | matcher matches: route key]
		ifNone: []. 

	^ result 