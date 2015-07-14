test - models
testTestModelCreateJsonForInvalidObject

	| object | 
	object := 1.
	self assert: [ ( [RPTestModel createJsonFor: object] on: Warning do: [true])]
	