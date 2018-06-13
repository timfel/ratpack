routing
setArgumentsToEnv: aRegex

	| matcher |
	matcher := (RxMatcher forString: aRegex).
	matcher matches: self request url.
	"perform:withArguments: requires all arguments to be passed as array."
	self parsedRequestArguments: matcher subexpressions allButFirst.