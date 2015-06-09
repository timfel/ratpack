default handling
getDefaultValueFor: anAttributeName

	^self defaultValues at: (anAttributeName asSymbol)
		ifAbsent: [self notify: 'No Defaultvalue set for ', anAttributeName, '.']