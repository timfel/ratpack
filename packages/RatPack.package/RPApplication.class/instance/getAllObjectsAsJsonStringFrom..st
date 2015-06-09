object handling
getAllObjectsAsJsonStringFrom: aModelName

	| objects string jsonString|
	objects := self database getAllObjectsFrom: aModelName.
	string := '['.
	objects do: [:each |
				(string == '[')
					ifFalse: [string := string , ','] .
				jsonString:= each asJsonStringWithAttributes: (self getRegisteredModel: aModelName) attributes.
				string := string, jsonString].
	string := string,']'.
	^string
