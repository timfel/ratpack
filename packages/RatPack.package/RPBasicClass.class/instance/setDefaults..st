initialize
setDefaults: anIdentityDictionary
	
	anIdentityDictionary associationsDo: [:association|  
		( self instVarNamed: association key )ifNil: [(self instVarNamed: association key put: association value)]].