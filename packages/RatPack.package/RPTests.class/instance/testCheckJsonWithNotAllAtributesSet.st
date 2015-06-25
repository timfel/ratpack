tests - json
testCheckJsonWithNotAllAtributesSet
	| validator jsonObject |
	"Json with not all attributes set"
	jsonObject := RPTestHelper createJsonObjectFrom:  '{"test":"20" }'.

	validator := RPModel new: 'test' on: RPTest with: #( 'test' 'variable' ).
	self assert: ((validator checkJson: jsonObject) = false).