test - json - old
testCheckCorrectJSON
	| validator jsonObject |
	"correct JSON"
	 jsonObject := RPTestHelper createJsonObjectFrom:  '{"test":"20" , "variable":"green" }'.
	
	validator := RPModel new: 'test' on: RPTest with: #( 'test' 'variable' ).
	self assert: (validator checkJson: jsonObject).