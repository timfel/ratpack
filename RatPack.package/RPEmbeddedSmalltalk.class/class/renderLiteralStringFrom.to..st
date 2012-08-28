compiling
renderLiteralStringFrom: rs to: stream

	stream
		nextPutAll: 'r00t nextPutAll: ';
		nextPutAll: (rs upToAll: '<%') printString;
		nextPut: $.;
		nextPut: Character cr.
