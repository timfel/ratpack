http requests
createObjects: amount of: anRPModel

	^ (1 to: amount) collect: [:i | anRPModel createObject: self getExampleJson.] 