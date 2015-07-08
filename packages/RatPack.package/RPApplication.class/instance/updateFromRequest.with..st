object handling
updateFromRequest: aRPModelname with: anId
 
      | updatedObject jsonString aRPModelClass|
	aRPModelClass := self getRegisteredModel: aRPModelname.
	jsonString := (self threadLocal: RPApplication requestKey) rawPutContents.
	updatedObject := aRPModelClass createObject: jsonString.
	self database update: updatedObject with: anId from: aRPModelClass