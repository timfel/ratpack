tests
testCheckCorrectJSON
	| validator json string stream|
	"correct JSON"
	string := ('{"test":"20" , "variable":"green" }' asOrderedCollection).
	stream := ReadStream on:  string from: 1 to: (string size).
	json := Json readFrom: stream.
	
	validator := RPModel new: 'test' on: RPTest with: #( 'test' 'variable' ).
	self assert: (validator checkJson: json).