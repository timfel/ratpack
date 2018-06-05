routing
route: aHttpRequest 
	
	"The debugDynamicEnv is only a local variable to simplify the debugging of dynamicEnvironment which depends on ThreadID and is not inspectable in debugger, because of a bug in the Debugger itself"
	
	| callChain next index debugDynamicEnv |
	debugDynamicEnv := self dynamicEnvironment.
	self setRouteHandler.
	callChain := self createCallChain.
	
	index := 0.
	next := [index := index +1.
		(callChain at: index) handle: self dynamicEnvironment next: next.].
	
	next value.
	debugDynamicEnv := self dynamicEnvironment.