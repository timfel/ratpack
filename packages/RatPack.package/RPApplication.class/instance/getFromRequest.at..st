object handling
getFromRequest: aRPModelname at: anID
 
      | object aJsonString aRPModelClass|
	aRPModelClass := self getRegisteredModel: aRPModelname.
      object := self database getObject: anID from: aRPModelClass.
      aJsonString := aRPModelClass createJsonFor: object.  
       ^ self sendJson: aJsonString with: 'model/api'