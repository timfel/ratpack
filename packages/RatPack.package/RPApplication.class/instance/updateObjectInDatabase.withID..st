object handling
updateObjectInDatabase: aModelName withID: anID
 
        | updatedObject jsonObject jsonString |

		jsonString := (self threadLocal: RPApplication requestKey) rawPutContents.
	 	jsonObject := Json readFrom: (ReadStream on:  jsonString   from: 1 to: (jsonString size)).

		updatedObject := ((self getRegisteredModel: aModelName) createObject: jsonObject). 

		self database  updateObject: updatedObject at: aModelName withID: anID 