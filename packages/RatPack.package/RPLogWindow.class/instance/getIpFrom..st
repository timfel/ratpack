private-interaction
getIpFrom: aHttpRequest 

	[^ aHttpRequest remoteAddress asIpString] on: MessageNotUnderstood do: [^ 'unknown IP']
	