object handling
getFromRequest: aRPModelClass at: anID
 
        | object JsonString|
        object := self database getObject: anID from: aRPModelClass.
        JsonString := aRPModelClass createJsonFor: object.  
        ^ self sendJson: JsonString with: 'model/api'