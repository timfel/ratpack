object handling
getAllObjectsAsJsonStringFrom: aModelName
 
        | objects string jsonString|
        objects := self database getAllObjectsFrom: aModelName.
        string := '{"data":['.
        objects do: [:each |
                                (string == '{"data":[')
                                        ifFalse: [string := string , ','] .
                                jsonString:= each asJsonStringWithAttributes: (self getRegisteredModel: aModelName) attributes.
                                string := string, jsonString].
        string := string,']}'.
        ^self sendJson: string with: 'model/api'