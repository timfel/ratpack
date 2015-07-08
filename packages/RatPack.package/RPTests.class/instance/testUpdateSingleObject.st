test - REST operations - old
testUpdateSingleObject

      | url  updateUrl jsonstring |
     	app registerModel: RPTestModel.
	url := '/api/', (RPTestModel name).
	RPTestHelper put: url on: app content: '{"var1":3,"var2":"Bartholomeus"}'.
 	jsonstring := '{"var1":3,"var2":"Nicht-Bartholomeus"}'.
      updateUrl  := '/api/',  (RPTestModel name) , '/1'.
	RPTestHelper put: updateUrl on: app content: jsonstring.
  	self assert: '{"var1":3,"var2":"Nicht-Bartholomeus"}' 
		equals: (RPTestModel createJsonFor: ((app database loadObjects: RPTestModel) first)).