object handling
persist: anObject from: aRPModelClass

	anObject setId: (self getNextIdForModel: aRPModelClass name asSymbol ).
	[self modelDictionary at: aRPModelClass name asSymbol ]
		on: KeyNotFound 
		do:[ self modelDictionary at: aRPModelClass name asSymbol put: IdentityDictionary new].
	"anObject timestamp: Time totalSeconds. "
	( self modelDictionary at: aRPModelClass name asSymbol ) at: (anObject id) put: anObject
	