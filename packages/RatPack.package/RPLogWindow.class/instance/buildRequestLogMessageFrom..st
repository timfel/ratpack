as yet unclassified
buildRequestLogMessageFrom: aHttpRequest 

	| ip time url method |
	ip := self getIpFrom: aHttpRequest.
	time := Date dateAndTimeNow asString.
	url := aHttpRequest url.
	method := aHttpRequest method.
	^ '{1} {2} {3} {4} ' format: {time. ip. method. url}