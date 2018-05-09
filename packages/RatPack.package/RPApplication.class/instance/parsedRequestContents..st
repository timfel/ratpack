private
parsedRequestContents: aContent

	self threadLocal: (self class parsedRequestContentsKey) put: aContent.