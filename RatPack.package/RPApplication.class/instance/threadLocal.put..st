private
threadLocal: aSymbol put: aValue
	
	^ self dynamicEnvironment at: aSymbol put: aValue
