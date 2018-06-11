accessing
middleware

	^ middleware ifNil: [ middleware := RPMiddlewareContainer newWithGlobalSymbols: self class globalMiddleware andKey: self class globalMiddlewareKey andSettings: self settings. ]