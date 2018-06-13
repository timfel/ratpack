accessing
headersAt: aKey put:	aValueOrBlock

	| caseInsensitiveKey convinienceHeaders|
	convinienceHeaders :=	{'status' -> [ self status: aValueOrBlock value. ].
				  			'content-type' -> [ self contentType: aValueOrBlock value. ].
				  			'cookies' -> [ self addCookies: aValueOrBlock value. ]} asDictionary.
	
	caseInsensitiveKey := aKey asLowercase.
	convinienceHeaders
		at: caseInsensitiveKey
		ifPresent: [ (convinienceHeaders at: caseInsensitiveKey) value. ]
		ifAbsent: [ self response fieldAt: caseInsensitiveKey put: (aValueOrBlock value). ].
	