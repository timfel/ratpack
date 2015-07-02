routing
findHandlerFor: aHttpRequest in: routes

	| result |
	result := routes detect: [:route | (RxMatcher forString: route key) matches: (aHttpRequest url)]
		ifNone: []. 

	^ result 