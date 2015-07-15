test - models
testTestModelValidateJsonCorrect
	
	"correct Json"
	 self assert: ([ RPTestModel createObject: '{"salary":1 , "name":"green" }'. true]on: Warning do:[false]).
	
