private-interaction
includeGlobalMiddleware: aMiddlewareList

	| expandedList listWithGlobalSymbol indexGlobalKey|

	listWithGlobalSymbol := aMiddlewareList copy.
	indexGlobalKey := aMiddlewareList indexOf: #globalMiddleware ifAbsent: [ 	listWithGlobalSymbol add: #globalMiddleware beforeIndex: 1. indexGlobalKey := 1].
	expandedList := listWithGlobalSymbol copyFrom: 1 to: (indexGlobalKey - 1).
	expandedList addAllLast: self globalMiddleware.
	expandedList addAllLast: (listWithGlobalSymbol copyFrom: indexGlobalKey +1 to: listWithGlobalSymbol size). 
	
	^ expandedList 