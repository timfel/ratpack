object accessing
checkDefault: anAttributList

	| defaultList |
	defaultList := self defaultValues keys.
	defaultList do: [:each | 
			anAttributList remove: (each asSymbol) ifAbsent: []].
	^anAttributList