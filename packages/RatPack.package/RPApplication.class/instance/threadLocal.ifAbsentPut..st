private
threadLocal: aSymbol ifAbsentPut: aBlock
	
	^ (self threadLocal: aSymbol) ifNil: [self threadLocal: aSymbol put: aBlock value]
