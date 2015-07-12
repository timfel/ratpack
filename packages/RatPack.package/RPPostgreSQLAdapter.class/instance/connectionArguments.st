accessing
connectionArguments

	^ connectionArguments ifNil: [ connectionArguments := PGConnectionArgs
									hostname: 'localhost'
									portno: 5432
									databaseName: 'squeakDB'
									userName: 'postgres'
									password: 'bird']