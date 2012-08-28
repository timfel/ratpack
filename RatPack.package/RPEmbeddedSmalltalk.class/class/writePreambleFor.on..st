compiling
writePreambleFor: aString on: stream
	"Initial code. Prepare the write stream to hold the rendered string"
	stream
		nextPutAll: '| r00t | r00t := WriteStream on: (String new: ';
		nextPutAll: (aString size / 2) floor printString;
		nextPutAll: ').';
		nextPut: Character cr.