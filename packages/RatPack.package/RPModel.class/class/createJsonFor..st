object conversion
createJsonFor: anObject

	^ (self createAttributeDictionaryFor: anObject) asJsonString
