registering classes
registerClass: aString
	| classObject |
	classObject := (RPClassObject newFromString: aString).
	(classObject isValid) ifTrue: [ 
		self registeredClasses at: (classObject header asSymbol) put: (classObject)]
	