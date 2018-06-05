handler calling
handle: anEnv next: aNext

	| arguments response |
	
	"perform:withArguments: requires all arguments to be passed as array."
	arguments := (anEnv request url findTokens: '/') allButFirst asArray.
	response := (self application perform: anEnv handler withArguments: arguments).
	self setBodyIfAppropiate: response in: anEnv.