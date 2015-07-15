connection
connectTo: aDBName on: aHost at: aPort as: aUser with: aPassword 

	self connectionArguments: ( PGConnectionArgs
									hostname: aHost
									portno: aPort
									databaseName: aDBName
									userName: aUser
									password: aPassword)