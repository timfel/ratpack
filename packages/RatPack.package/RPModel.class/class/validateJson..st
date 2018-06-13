validation
validateJson: aJson
	| allAttributes jsonObject givenAttributes attributesWithDefault |
	jsonObject := Json readFrom: (ReadStream on: aJson from: 1 to: (aJson size)).

	allAttributes := self dataTypes keys asOrderedCollection.
	givenAttributes := jsonObject keys asOrderedCollection.
	attributesWithDefault := self defaultValues keys. 

	^ (givenAttributes, attributesWithDefault) asSet = (allAttributes asSet)