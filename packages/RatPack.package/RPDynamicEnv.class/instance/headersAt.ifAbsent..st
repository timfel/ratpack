accessing
headersAt: aKey ifAbsent: aBlock

	^ self response fieldAt: aKey asLowercase ifAbsent: aBlock