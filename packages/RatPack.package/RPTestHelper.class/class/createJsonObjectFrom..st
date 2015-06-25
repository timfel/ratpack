helper functions
createJsonObjectFrom: aString
	| collection stream| 

	collection := aString asOrderedCollection.
	stream := ReadStream on:  collection from: 1 to: (collection size).
	^Json readFrom: stream