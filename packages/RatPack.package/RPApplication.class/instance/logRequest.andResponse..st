logging
logRequest: aHttpRequest andResponse: aHttpResponse

	| responseMessage requestMessage |
	(self loggingIsEnabled)
		ifTrue: [requestMessage := self buildRequestLogMessageFrom: aHttpRequest.
				responseMessage := self buildResponseLogMessageFrom: aHttpResponse.
				Transcript show: requestMessage, ' ', responseMessage; cr]
		