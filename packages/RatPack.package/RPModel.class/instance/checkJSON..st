object accessing
checkJson: aJsonObject
	| attList jsonList |
	attList := self attributes asOrderedCollection copy.
	jsonList := aJsonObject keys asOrderedCollection copy.

	jsonList do: [:each | 
				attList remove: (each asString) ifAbsent: [^false ]].
	
	attList := self checkDefault: attList.
	(attList isEmpty ) ifFalse: [^false].
	^true