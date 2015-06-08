tests
testCheckJsonWithToManyAttributes
	
	| validator json string stream |
	"Json with to many attributes"

	string := ('{"test":"20","variable":"green","notthere":"42"}' asOrderedCollection).
	stream := ReadStream on:  string from: 1 to: (string size).
	json := Json readFrom: stream.

	validator := RPModel new: 'test' on: RPTest with: #( 'test' 'variable' ).
	self assert: ((validator checkJson: json) = false).