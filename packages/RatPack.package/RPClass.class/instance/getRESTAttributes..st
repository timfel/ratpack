REST
getRESTAttributes: aCollection

	| dict|
	dict := IdentityDictionary new.
	aCollection do: [:each | 
		dict at: each put: (self callRESTMethod: each)].
	^dict