validation
validateJson: aJson

	| attList specifiedAttributes defaultAttributes jsonObject |
	"check if each attribute of an object is either given in the JSON string or has a default value"
	jsonObject := Json readFrom: (ReadStream on:  aJson   from: 1 to: (aJson size)).
	
	attList := self dataTypes keys asOrderedCollection copy.
	specifiedAttributes := jsonObject keys asOrderedCollection copy.
	defaultAttributes := self defaultValues keys. 
	^ (defaultAttributes, specifiedAttributes) asSet includesAllOf: (attList asSet). 	
	