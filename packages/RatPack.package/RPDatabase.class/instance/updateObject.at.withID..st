object handling
updateObject: anRPObject at: aModel withID: id 
	"TODO check for ID match.
	 anRPObject id ifNil: [self notify:  'Model named ', aModel name, ' not found!']."
	anRPObject timestamp: Time totalSeconds.
	Transcript show: anRPObject timestamp. 
	[self modelDictionary at: aModel asSymbol ]
		on: KeyNotFound do:[ 	self modelDictionary at: aModel put: IdentityDictionary new].
	(self modelDictionary at: aModel asSymbol ) at: id asSymbol put: anRPObject
	