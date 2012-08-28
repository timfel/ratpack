private
threadLocal: aSymbol ifAbsentPut: aBlock
	
	^ Processor activeProcess
		environmentAt: aSymbol
		ifAbsent: [Processor activeProcess environmentAt: aSymbol put: aBlock value]
