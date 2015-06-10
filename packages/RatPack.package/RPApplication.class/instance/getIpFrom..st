logging
getIpFrom: aHttpRequest 

	| addressBytes |
	addressBytes := aHttpRequest remoteAddress.
	[^ addressBytes asIpString] on: MessageNotUnderstood do: [^ 'unknown IP']
	