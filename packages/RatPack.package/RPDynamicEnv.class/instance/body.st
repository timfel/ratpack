accessing
body
	"The first contents is a stream, we want a string"
	^ self response contents contents
