private-accessing
atHandler: aSymbol
	
	| list |
	list := self handlerMapping at: aSymbol ifAbsentPut: [ #(#globalMiddleware) asOrderedCollection ].
	^ self includeGlobalMiddleware: list.