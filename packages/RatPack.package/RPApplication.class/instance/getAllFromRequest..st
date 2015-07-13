object handling
getAllFromRequest: aRPModelname
 
      | objects string aRPModelClass |
	aRPModelClass := self getRegisteredModel: aRPModelname.
      objects := self database loadObjectsOf: aRPModelClass.  
	string := '{"data":['.
      objects withIndexDo: [:each :index |
         	(index =  1)
              	ifFalse: [string := string , ','] .
              string := string , (aRPModelClass createJsonFor: each)].
   	string := string,']}'.
  	^self sendJson: string with: 'model/api'