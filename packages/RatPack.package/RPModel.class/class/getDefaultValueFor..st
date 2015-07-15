accesing
getDefaultValueFor: anAttributeName

	^self defaultValues at: (anAttributeName asSymbol)
		ifAbsent: [self notify: 'No defaultvalue set for ', anAttributeName, '.']