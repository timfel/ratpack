private
threadLocal: aSymbol
	
	^ self dynamicEnvironment at: aSymbol ifAbsent: []
