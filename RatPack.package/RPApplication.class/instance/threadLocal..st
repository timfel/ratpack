private
threadLocal: aSymbol
	
	^ Processor activeProcess environmentAt: aSymbol ifAbsent: []
