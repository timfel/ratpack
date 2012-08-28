compiling
renderCodeFrom: rs to: stream
	| isInsert |
	(isInsert := rs peekFor: $=) ifTrue: [stream nextPutAll: 'r00t nextPutAll: ('].
	stream nextPutAll: (rs upToAll: '%>').
	isInsert ifTrue: [stream nextPutAll: ') asString.'].
	stream nextPut: Character cr.
