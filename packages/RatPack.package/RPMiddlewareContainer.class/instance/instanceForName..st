private-accessing
instanceForName: aSymbol

	^ self instancesMapping at: aSymbol ifAbsentPut: (self createInstanceFromSymbol: aSymbol)