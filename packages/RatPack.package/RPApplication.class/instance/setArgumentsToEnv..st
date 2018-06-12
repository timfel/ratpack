routing
setArgumentsToEnv: aRegex

	| arguments matcher |
	matcher := (RxMatcher forString: aRegex).
	arguments := matcher submatchesIn: self request url.
	
	"perform:withArguments: requires all arguments to be passed as array."
	self parsedRequestArguments: (arguments at: 1)  allButFirst asArray.