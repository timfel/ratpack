templating
est: aString
	"Slow, because it reifies the stack, but allows access to arguments and temps"
	^ RPEmbeddedSmalltalk render: aString in: thisContext sender