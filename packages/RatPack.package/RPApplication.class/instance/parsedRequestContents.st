accessing
parsedRequestContents

	^ self threadLocal: (self class parsedRequestContentsKey)