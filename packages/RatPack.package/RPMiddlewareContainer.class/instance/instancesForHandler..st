accessing
instancesForHandler: aSymbol

	^ (self atHandler: aSymbol) collect: [ :middlewareSymbol | self instanceForName: middlewareSymbol ]