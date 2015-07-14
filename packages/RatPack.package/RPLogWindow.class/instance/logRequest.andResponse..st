as yet unclassified
logRequest: aHttpRequest andResponse: aHttpResponse

	| responseMessage requestMessage |
	(self loggingIsEnabled)
		ifTrue: [requestMessage := self buildRequestLogMessageFrom: aHttpRequest.
				responseMessage := self buildResponseLogMessageFrom: aHttpResponse.
				self show: (requestMessage, ' ', responseMessage); cr]