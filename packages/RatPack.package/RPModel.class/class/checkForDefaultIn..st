validation
checkForDefaultIn: anAttributeList

	| defaultList |
	defaultList := (self dataTypes select:[ :each | | return |
				return := true.
				each value at: 2 ifAbsent:
					 [return := false].
					return  ]) keys.
	defaultList do: [:each | 
			anAttributeList remove: (each asSymbol) ifAbsent: []].
	^anAttributeList