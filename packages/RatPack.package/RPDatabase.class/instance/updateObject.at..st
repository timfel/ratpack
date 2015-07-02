object handling
updateObject: anRPObject at: aModel
	anRPObject id ifNil: [self notify:  'Model named ', aModel name, ' not found!'].
	[self modelDictionary at: aModel asSymbol ]
		on: KeyNotFound do:[ self modelDictionary at: aModel put: IdentityDictionary new].
	(self modelDictionary at: aModel asSymbol ) at: (anRPObject id) put: anRPObject
	