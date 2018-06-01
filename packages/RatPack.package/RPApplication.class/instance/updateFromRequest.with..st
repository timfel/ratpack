object handling
updateFromRequest: aRPModelname with: anId
 
    | updatedObject jsonString aRPModelClass |

	aRPModelClass := self getRegisteredModel: aRPModelname.
	jsonString := self request rawPutContents.
	updatedObject := aRPModelClass createObject: jsonString.
	self database update: updatedObject with: anId from: aRPModelClass.
	^ self getObjectFromRequest: aRPModelname with: anId
