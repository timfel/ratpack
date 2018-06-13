helper functions
getExampleGlobalHeaders

	^ {'date' -> [ TimeStamp now asString. ] . 'global-headers-work' -> 'true' } asDictionary