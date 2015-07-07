object handling
getAllFromRequest: aRPModelClass
 
        | objects string |
        objects := self database loadObjects: aRPModelClass.
        string := '{"data":['.
        objects withIndexDo: [:each :index |
                                (index ==  1)
                                        ifFalse: [string := string , ','] .
                                string := string , aRPModelClass createJsonFor: each].
        string := string,']}'.
        ^self sendJson: string with: 'model/api'