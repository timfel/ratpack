interaction
isUrlBlacklisted: anUrl

	self class blacklist
		detect: [ :regex | (RxMatcher forString: regex) matches: anUrl. ]
		ifNone: [ ^ false ].
	
	^ true
	