object accessing
checkJSON: aJSON
	| attList jsonList |
	attList := self attributes asOrderedCollection copy.
	
	jsonList := aJSON ctorMap keys asOrderedCollection copy.
	jsonList do: [:each | 
				attList remove: (each asString) ifAbsent: [^false ]].
	
	attList := self checkDefault: attList.
	(attList isEmpty ) ifFalse: [^false].
	^true