validation
validateJson: aJson

	| attList jsonList jsonObject |
	jsonObject := Json readFrom: (ReadStream on: aJson from: 1 to: (aJson size)).

	attList := self dataTypes keys asOrderedCollection copy.
	jsonList := jsonObject keys asOrderedCollection copy.

	jsonList do: [:key | 
				attList remove: (key asString) ifAbsent: [^false]].
	
	attList := self checkForDefaultIn: attList.
	^ attList isEmpty