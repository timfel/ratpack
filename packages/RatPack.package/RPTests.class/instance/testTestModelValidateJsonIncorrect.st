test - models
testTestModelValidateJsonIncorrect
	
	"incorrect Json"
	self assert: ([ RPTestModel createObject: '{"var":1 , "var2":"green" }'. false]on: Warning do:[true]).
	
