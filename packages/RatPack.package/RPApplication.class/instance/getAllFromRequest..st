object handling
getAllFromRequest: aRPModelname
 
      | modelObjects string aRPModelClass |
	aRPModelClass := self getRegisteredModel: aRPModelname.
      modelObjects := self database loadModelObjectsOf: aRPModelClass.  
	string := '{"data":['.
      modelObjects withIndexDo: [:each :index |
         	(index =  1)
              	ifFalse: [string := string , ','] .
              string := string , each asJson ].
   	string := string,']}'.
  	^self sendJson: string with: 'model/api'