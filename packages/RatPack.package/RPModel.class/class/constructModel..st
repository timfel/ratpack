metadata handling
constructModel: aDictionary

	^ self new: (self reconstructObject: aDictionary) 
			with: (self constructMetadata: aDictionary) 