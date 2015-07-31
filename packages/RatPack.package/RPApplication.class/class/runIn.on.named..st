instance creation
runIn: mode on: aPort named: aString
	
	| service |
	service := self on: aPort named: aString.
	^ service
		mode: mode;
		start;
		yourself
