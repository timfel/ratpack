test - routing
testSettingHeadersCaseInsensitive
	
	| environment |
	environment := RPTestHelper getExampleEnvironment.
	environment headersAt: 'date' put: TimeStamp today asString.
	self assert: (environment headersAt: 'date' ifAbsent:['date field is missing']) equals: TimeStamp today asString.
	self assert: (environment headersAt: 'dAtE' ifAbsent:['date field is missing']) equals: TimeStamp today asString.
	
	environment headersAt: 'DaTe' put: TimeStamp tomorrow asString.
	self assert: (environment headersAt: 'date' ifAbsent:['date field is missing']) equals: TimeStamp tomorrow asString.
	self assert: (environment headersAt: 'dAtE' ifAbsent:['date field is missing']) equals: TimeStamp tomorrow asString.
	
	environment headersPut: RPTestHelper getExampleGlobalHeaders.
	self assert: (environment  headersAt: 'Global-heAderS-wOrk' ifAbsent:['global headers field is missing']) equals: 'true'.
	self assert: (environment  headersAt: 'dAte' ifAbsent:['date field is missing']) equals: TimeStamp now asString.