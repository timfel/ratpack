tests
testCheckJsonWithNotAllAtributesSet
	| validator json string stream|
	"Json with not all attributes set"
	string := ('{"test":"20" }' asOrderedCollection).
	stream := ReadStream on:  string from: 1 to: (string size).
	json := Json readFrom: stream.

	validator := RPModel new: 'test' on: RPTest with: #( 'test' 'variable' ).
	self assert: ((validator checkJson: json) = false).