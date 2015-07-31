test - models
testTestModelValidateJsonWithToManyAttributes
	
 	self assert: ([ RPTestModel createObject: '{"var1":1 , "var2":"green", "var3":1 }'. false]on: Warning do:[true]).