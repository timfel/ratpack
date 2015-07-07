validation
validateObject: aObject

	| neededAttritbutes |

	neededAttritbutes := self dataTypes keys asOrderedCollection copy.

	neededAttritbutes do: [:each | 
				 [aObject instVarNamed: each] on: Error do: [^false ]].

	^ true