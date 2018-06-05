accessing
registerMiddleware: aMiddlewareList forHandler: aSymbol
	
	self handlerMapping at: aSymbol ifPresent: [ self error: 'Changing Middleware to runtime is prohibit.' ].
	^ self handlerMapping at: aSymbol ifAbsentPut: aMiddlewareList