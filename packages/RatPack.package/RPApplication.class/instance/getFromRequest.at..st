object handling
getFromRequest: aRPModelname at: anID

      | object aJsonString aRPModelClass|
self halt.

	aRPModelClass := self getRegisteredModel: aRPModelname.
      object := self database loadObject: anID from: aRPModelClass.
      aJsonString := aRPModelClass createJsonFor: object.  
       ^ self sendJson: aJsonString with: 'model/api'