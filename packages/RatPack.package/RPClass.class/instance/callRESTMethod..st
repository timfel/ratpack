REST
callRESTMethod: aString

	^self perform: ('REST' , aString) asSymbol