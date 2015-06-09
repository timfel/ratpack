object handling
getObjectAsJsonStringfrom: aModelName at: anID
 
        | object JSONstring|
        object := self database getObject: anID from: aModelName.
        JSONstring := object asJsonStringWithAttributes: (self getRegisteredModel: aModelName) attributes.  
        ^ self sendJson: JSONstring with: 'model/api'