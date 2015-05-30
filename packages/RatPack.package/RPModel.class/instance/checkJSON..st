object accessing
checkJSON: aJSON
	| attList jsonList |
	attList := self attributes asOrderedCollection copy.
	jsonList := (aJSON ctorMap at: '1' asSymbol ) keys asOrderedCollection copy.
	jsonList do: [:each | 
				attList remove: (each asString) ifAbsent: [^false ]].
	(attList isEmpty ) ifFalse: [^false].
	^true