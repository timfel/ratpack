test - models
testTestModelValidateJsonCorrect
	
	"correct Json"
	 self assert: ([ RPTestModel createObject: '{"var1":1 , "var2":"green" }'. true]on: Warning do:[false]).
	
