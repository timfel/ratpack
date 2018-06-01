object handling
getObjectFromRequest: aRPModelname with: anID

	| modelObject aRPModelClass |

	aRPModelClass := self getRegisteredModel: aRPModelname.
	[ modelObject := self database loadModelObject: (anID asNumber) from: aRPModelClass] 
		on: Warning do: [^ self objectNotFound].
 
	^ self sendJson: (modelObject asJson)