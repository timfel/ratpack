registering classes
getRegisteredClass: aString
	"implement"
	^ (self registeredClasses at: aString asSymbol)