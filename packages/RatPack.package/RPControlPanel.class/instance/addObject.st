actions
addObject

	| aModelName aJsonString |

	aModelName := ((UIManager default
					request: 'For Model' translated 
					initialAnswer: 'test' asString ) ifEmpty: [^ self]).
	aJsonString := ((UIManager default
					request: 'Object as JsonString' translated 
					initialAnswer: '{"test":"20","variable":"green" }') ifEmpty: [^ self]).
	self selectedApplication addObject: (RPTestHelper  createJsonObjectFrom: aJsonString) from: aModelName.
	self change
	