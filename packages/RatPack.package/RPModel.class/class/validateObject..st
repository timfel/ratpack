validation
validateObject: aObject

	| neededAttritbutes allAttributes |

	neededAttritbutes := self dataTypes keys asOrderedCollection copy.
	allAttributes := aObject class allInstVarNames. 
	
	^ allAttributes asSet includesAllOf: neededAttritbutes asSet 	