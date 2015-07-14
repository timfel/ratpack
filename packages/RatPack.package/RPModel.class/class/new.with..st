initialize
new: anObjcet with: someMetadata 

	^ self basicNew 
		metadata: someMetadata;
		object: anObjcet;
	yourself. 