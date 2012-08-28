private
cacheAt: aSymbol ifAbsentPut: aBlock

	^ (self threadLocal: #cache ifAbsentPut: [Dictionary new])
		at: aSymbol ifAbsentPut: aBlock value