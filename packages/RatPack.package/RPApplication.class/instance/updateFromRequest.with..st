object handling
updateFromRequest: aRPModelClass with: anId
 
      | updatedObject jsonString |
	jsonString := (self threadLocal: RPApplication requestKey) rawPutContents.
	updatedObject := aRPModelClass createObject: jsonString.

	self database update: updatedObject with: anId from: aRPModelClass