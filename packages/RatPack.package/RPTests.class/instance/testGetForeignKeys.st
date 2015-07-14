test - foreign keys
testGetForeignKeys

	self assert: (RPTestModelFK foreignKeys at: #testModelId) equals: RPTestModel 