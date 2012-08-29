private
threadLocal: aSymbol put: aValue
	
	^ Processor activeProcess
		environmentAt: aSymbol
		put: aValue
