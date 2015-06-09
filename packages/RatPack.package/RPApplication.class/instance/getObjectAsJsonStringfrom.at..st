object handling
getObjectAsJsonStringfrom: aModelName at: anID 

	| object |
	object := self database getObject: anID from: aModelName.
	^object asJsonStringWithAttributes: (self getRegisteredModel: aModelName) attributes 