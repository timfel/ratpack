as yet unclassified
decode: aJsonString

	^ Json readFrom: (ReadStream on: aJsonString).	
