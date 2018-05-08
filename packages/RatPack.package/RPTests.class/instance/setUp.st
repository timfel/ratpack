running
setUp

	app := RPTestApp new.
	app disableLogging.
	
	strictApp := RPStrictDecodingTestApp new.
	strictApp disableLogging.