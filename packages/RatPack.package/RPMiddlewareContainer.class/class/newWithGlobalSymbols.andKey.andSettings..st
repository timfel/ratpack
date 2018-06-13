initialization
newWithGlobalSymbols: aGlobalMiddleware andKey: aGlobalMiddlewareKey andSettings: aRPSetting

	| container |
	container := self basicNew.
	container initialize.
	container globalMiddleware: aGlobalMiddleware.
	container globalMiddlewareKey: aGlobalMiddlewareKey.
	container settings: aRPSetting.
	^ container