model handling
addModelClass: aRPModelClass

(aRPModelClass validateRefClass) 
	ifTrue: [
		self database createTableFor: aRPModelClass.
		self addModelRouteFor: aRPModelClass.
		self modelClasses at: (aRPModelClass name asSymbol ) put: aRPModelClass.]
	ifFalse: [
		self notify: 'Could not register modelclass to application!']