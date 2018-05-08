as yet unclassified
decode: aJsonString

	| aJsonObject |
	aJsonObject := Json readFrom: (ReadStream on: aJsonString from: 1 to: (aJsonString size)).	
	
	^ Dictionary newFrom: aJsonObject