accessing
connection

	connection ifNil: [connection := PGConnection new].
	
	^ connection connectionArgs: self connectionArguments.