as yet unclassified
getIpFrom: aHttpRequest 

	[^ aHttpRequest remoteAddress asIpString] on: MessageNotUnderstood do: [^ 'unknown IP']
	