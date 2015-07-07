test - json - old
testCheckJsonWithToManyAttributes
	
	| validator jsonObject |
	"Json with to many attributes"
	 jsonObject := RPTestHelper createJsonObjectFrom: '{"test":"20","variable":"green","notthere":"42"}'.

	validator := RPModel new: 'test' on: RPTest with: #( 'test' 'variable' ).
	self assert: ((validator checkJson: jsonObject) = false).