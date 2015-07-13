object handling
getFromRequest: aRPModelname with: anID

      | object aJsonString aRPModelClass|
	aRPModelClass := self getRegisteredModel: aRPModelname.
	[object := self database loadObject: anID from: aRPModelClass ]on: Warning 
		do:[^ self objectNotFound].
      aJsonString := aRPModelClass createJsonFor: object.  
       ^ self sendJson: aJsonString with: 'model/api'