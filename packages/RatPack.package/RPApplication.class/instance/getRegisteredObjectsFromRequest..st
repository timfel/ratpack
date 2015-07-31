endpoint
getRegisteredObjectsFromRequest: aRPModelname
 
      | modelObjects string aRPModelClass |
	aRPModelClass := self getRegisteredModel: aRPModelname.
      modelObjects := self database loadModelObjectsOf: aRPModelClass.  
	string := '{"data":[', ((modelObjects collect: [:each |
		each asJson]) joinSeparatedBy: ','), ']}'.
  	^ self sendJson: string with: 'model/api'